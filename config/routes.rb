Rails.application.routes.draw do
  resources :foods
  resources :beers
  resources :users

  post '/login', to: 'users#login'
  # http_verb 'path', to: 'controller#action'
end
