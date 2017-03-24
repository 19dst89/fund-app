Rails.application.routes.draw do
  get 'homerails/routes'

  devise_for :users, controllers: { sessions: 'users/sessions' }

  root to: "users#index"

  get "/products", to: "products#index", as: "products"
  get "/products/new", to: "products#new"
  post "/products", to: "products#create"
end
