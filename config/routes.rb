Rails.application.routes.draw do
  resources :web_accounts
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
