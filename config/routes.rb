Rails.application.routes.draw do
  root to: 'session#show'
  post '/' => 'session#create'
  resources :users, only: [:new, :create]
  resources :messages
  resources :channels
end
