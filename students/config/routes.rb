Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, param: :_username
    end
  end
  post '/auth/login', to: 'authentication#login'
  #get '/*a', to: 'application#not_found'
  namespace :api do
    namespace :v1 do
      resources :students
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
