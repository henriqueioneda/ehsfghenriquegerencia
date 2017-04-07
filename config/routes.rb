Rails.application.routes.draw do
  root to: 'visitors#index'
  resources :payments
  resources :users  
  get '/login', to: 'visitors#login'
  get '/logout', to: 'visitors#logout'
end
