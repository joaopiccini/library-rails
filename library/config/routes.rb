Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy'

  resources :books do
    member do
      post 'rent'
    end
  end

  resources :rentals
  resources :users
  resources :sessions

  root 'books#index'
end
