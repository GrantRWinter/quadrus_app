Rails.application.routes.draw do
  root 'cars#index'

  resources :cars, only: [:index, :show, :index] do
    resources :orders, only: [:new, :create]
  end


  namespace :admins do
    resources :cars, only: [:new, :create, :index, :destroy]
    resources :orders, only: [:index, :show, :destroy]
  end
end
