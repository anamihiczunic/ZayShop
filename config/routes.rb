Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'shop', to: 'products#index'

  resources :products, only: [:index, :show]
  resources :carts
  resources :product_items
end
