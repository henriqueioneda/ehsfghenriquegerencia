Rails.application.routes.draw do
  root to: 'visitors#index'
  resources :payments
  resources :users  
end
