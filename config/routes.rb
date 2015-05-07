Rails.application.routes.draw do
  root 'homes#index'

  devise_for :users

  resources :homes
  resources :users
  resources :companies
  resources :listings

end
