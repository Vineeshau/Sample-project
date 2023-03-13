Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users
  # scope '/admin' do
  #   resources :users
  # end
  resources :items
  resources :roles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  authenticated :user do
    root to: 'items#index', as: :authenticated_root
  end
  root to: 'welcome#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
