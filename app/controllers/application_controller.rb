class ApplicationController < ActionController::API

    before_action :authenticate

    def authenticate
        auth_header = request.headers[:authorization]

        if !auth_header
            render json: { error: 'You must be logged in. Send Bearer token' }, status: :forbidden
        else

            token = auth_header.split(' ')[1]
            secret = 'f#$fdg^&4565tgfy*(&^4trhk;{):yrrtef2367%^&(Gfhgjk&^*ulkl/P{{)(iRTyWe2eReg>LP'

            decoded_token = JWT.decod token, secret

            payload = decoded_token.first
            user_id = payload['user_id']

            @user = USER.find user_id
        end
    end

end
