Rails.application.routes.draw do
  # get 'homerails/routes'

  devise_for :users, controllers: { sessions: 'users/sessions' }

  root to: "users#index"

  # User Routes
  get '/users/:id', to: 'users#show', as: 'user'


  # Product Routes
  get "/products", to: "products#index", as: "products"
    # New Product
  get "/products/new", to: "products#new", as: "new_product"
    # Show Product
  get "/products/:id", to: "products#show", as: "product"
    # Create/Save Post Product
  post "/products", to: "products#create"
    # Edit Product Route
  get "/products/:id/edit", to: "products#edit", as: "edit_product"
    # Update Product
  patch "/products/:id", to: "products#update"
    # Remove/Delete Product
  delete "/products/:id", to: "products#destroy"


  # Transactions Routes
  get "/transactions", to: "transactions#index", as: "transactions"
    # New Transaction
  get "/transactions/new", to: "transactions#new", as: "new_transaction"
    # Show Transaction
  get "/transactions/:id", to: "transactions#show", as: "transaction"
end
