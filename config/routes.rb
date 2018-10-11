Rails.application.routes.draw do
  get "sessions/new"
  root "static_pages#home"
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"
  get "/help", to: "static_pages#help"
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :account_activations, only: :edit
  resources :password_resets, only: %i(new create edit update)
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :microposts
  resources :relationships, only: %i(create destroy)
end
