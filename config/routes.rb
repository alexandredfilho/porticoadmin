Rails.application.routes.draw do

  root "welcome#index"

  resources :shipments
  resources :customers
  resources :vehicles
  resources :drivers
end
