Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books, only: [ :index, :new, :show, :create, :update, :destroy, :edit ] do 
    resources :bookings, only: [ :new, :create ]
  end

  resources :users, only: [:show]
end
