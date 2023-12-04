Rails.application.routes.draw do

  resources :books do
    member do
      post 'rent'
      post 'refund'
    end
  end
  resources :rentals
  resources :users
  resources :sessions

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy'

  root 'books#index'
end
