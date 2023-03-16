Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'adminlte#index'
  get 'adminlte/index2'
  get 'adminlte/index3'
  # Defines the root path route ("/")
  # root "articles#index"
end
