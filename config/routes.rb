Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books do
    resources :reviews, only: [:new, :create, :show]
    resources :bookings, only: [ :new, :create ]
    resources :wishes, only: :create 
  end
  resources :wishes, only: :destroy

  resources :bookings, only: [ :show ] do 
    member do
      post :approve
      post :reject
    end
  end

  resources :users, only: [:show, :destroy] 
 
  end