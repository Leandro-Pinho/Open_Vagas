Rails.application.routes.draw do
  resources :companies, only: [:new, :edit, :update, :create]
  resources :positions do 
    resources :applicants, only: [:index]
  end
  resources :applicants, only: [:new, :create]
  root 'home#index'
  devise_for :users

  get "/vaga/:slug", action: :public_position, controller: :positions, as: :public_position
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
