class UsersController < ApplicationController

    skip_before_action :authenticate, only: [:create, :login]

    def index
        @users = User.all
        render json: @users, except: :password_digest
    end

    def create
        @user = User.new user_params

        if @user.valid?
            @user.save
            render json: @user, status: :created
        else
            render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
        end 
    end

    def login
        @user = User.find_by username: params[:user][:username]

        if !@user
            render json: {error: 'Invalid username or password'}, status: :unauthorized
        else

            if !@user.authenticate params[:user][:password]
                render json: {error: 'Invalid username or password'}, status: :unauthorized
            else
                payload = {user_id: @user.id}
                secret = 'f#$fdg^&4565tgfy*(&^4trhk;{):yrrtef2367%^&(Gfhgjk&^*ulkl/P{{)(iRTyWe2eReg>LP'
                # FOR PRODUCTION => secret = ENV['SECRET_KEY_BASE']
                token = JWT.encode payload, secret 
                render json: { token: token, user: @user }, status: :ok
            end

        end
        
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
