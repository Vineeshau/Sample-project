Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post '/auth/login', to: 'authentication#login'
  # get '/*a', to: 'application#not_found'
  namespace :api do
    namespace :v1 do
      resources :users, param: :_username
      get '/students/timetable/', to: 'students#timetable'
      get '/students/marks/', to: 'students#view_marks'
      resources :students
      get '/departments/dept_details/:id', to: 'departments#dept_details'
      post '/departments/teacher', to: 'departments#teacher_create'
      resources :departments
      get '/teachers/student/', to: 'teachers#stud_index'
      get '/teachers/student/:id', to: 'teachers#stud_show'
      put '/teachers/student/:id', to: 'teachers#stud_update'
      delete '/teachers/student/:id', to: 'teachers#stud_destroy'
      resources :teachers 
      resources :groups
      resources :subjects
      resources :exams
      resources :student_exams
      resources :marks
      get '/parents/progress_card', to: 'parents#progress_card'
      resources :parents
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
