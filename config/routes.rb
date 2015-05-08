Rails.application.routes.draw do
  root 'homes#index'

  devise_for :users

  resources :homes
  resources :companies

  resources :users do
    resources :listings
  end

  resources :listings do
    resources :inquiries
  end

  resources :inquiries do
    resources :conversations
  end

end
