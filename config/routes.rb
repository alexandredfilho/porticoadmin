Rails.application.routes.draw do
  resources :shipments
  resources :customers
  resources :vehicles
  resources :drivers
end
