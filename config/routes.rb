Rails.application.routes.draw do
  resources :companies, only: [:new, :edit, :update, :create]
  resources :positions
  resources :applicants, only: [:index, :new, :create]
  root 'home#index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
