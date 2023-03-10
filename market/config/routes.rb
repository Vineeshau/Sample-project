Rails.application.routes.draw do
  devise_for :users
  # scope '/admin' do
  #   resources :users
  # end
  resources :items
  resources :roles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'items#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
