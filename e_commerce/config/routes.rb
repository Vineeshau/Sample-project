Rails.application.routes.draw do
  devise_for :customers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :sales
  resources :customers
  resources :products
  root to: 'products#index'

  # Defines the root path route ("/")
  # root "articles#index"
end
