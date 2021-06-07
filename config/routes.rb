Rails.application.routes.draw do

  devise_for :users
  root "welcome#index"

  resources :shipments
  resources :customers
  resources :vehicles
  resources :drivers
end
