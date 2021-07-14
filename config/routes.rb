Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'shop', to: 'pages#shop'

  resources :products, only: [:index, :show]
  resources :carts
  resources :product_items
end
