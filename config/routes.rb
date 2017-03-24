Rails.application.routes.draw do
  get 'homerails/routes'

  devise_for :users, controllers: { sessions: 'users/sessions' }

  root to: "users#index"
end
