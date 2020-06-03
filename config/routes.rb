Rails.application.routes.draw do
  resources :forests, only: [:index]
  resources :trees, only: [:index]
end
