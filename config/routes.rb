Rails.application.routes.draw do
  root 'cars#index'

  resources :cars, only: [:index, :show] do
    resources :orders
  end


  namespace :admins do
    resources :cars, only: [:new, :create, :index]
    resources :orders, only: [:index, :show]
  end
end
