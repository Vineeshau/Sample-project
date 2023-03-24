Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post '/auth/login', to: 'authentication#login'
  # get '/*a', to: 'application#not_found'
  namespace :api do
    namespace :v1 do
      resources :users, param: :_username
      resources :students
      resources :departments
      resources :colleges
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
