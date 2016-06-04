Rails.application.routes.draw do
  root 'welcome#index'

  resources :cars, only: [:index, :show]

  namespace :admins do
    resources :cars, only: [:new, :create]
  end
end
