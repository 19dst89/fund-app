Rails.application.routes.draw do
  get 'homerails/routes'

  devise_for :users, controllers: { sessions: 'users/sessions' }

  root to: "users#index"

  get "/products", to: "products#index", as: "products"
  get "/products/:id", to: "products#show", as: "product"
  post "/products", to: "products#create"
  get "/products/:id/edit", to: "products#edit", as: "edit_product"
  get "/products/new", to: "products#new"
  post "/products", to: "products#create"
  patch "/products/:id", to: "products#update"
  delete "/products/:id", to: "products#destroy"
end
