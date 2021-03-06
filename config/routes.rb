Rails.application.routes.draw do
  # get 'homerails/routes'

  devise_for :users, controllers: { sessions: 'users/sessions' }

  root to: "products#main"
  # User Routes
  get '/users/:id', to: 'users#show', as: 'user'
  patch "/users/:id", to: "users#update"

  get '/users/:id/edit', to: 'users#edit', as: "user_edit"


  # Product Routes
  get "/products", to: "products#index", as: "products"

  get "/products/new", to: "products#new", as: "new_product"

  get "/products/:id", to: "products#show", as: "product"

  post "/products", to: "products#create"

  get "/products/:id/edit", to: "products#edit", as: "edit_product"

  patch "/products/:id", to: "products#update"

  delete "/products/:id", to: "products#destroy"



  # Stripe Charges
  resources :charges, only: [:index, :new, :create]
    

end
