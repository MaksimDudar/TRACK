Rails.application.routes.draw do
  devise_for :users
  resources :users

  root to: "home#index"
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :tracks do
      resources :comments, only: [:create]
    end
  # Defines the root path route ("/")
  # root "articles#index"
end
