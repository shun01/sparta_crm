Rails.application.routes.draw do
  devise_for :users
  resources :customers
  resources :comments, only: [:create, :destroy]
  root 'customers#index'
end
