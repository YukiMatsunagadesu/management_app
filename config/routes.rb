Rails.application.routes.draw do
  root 'home#top'
  # get '/', to: 'home#top'
  post '/login', to:'home#login'

  get '/admin', to:'admin#index'
  get '/admin/today', to:'admin#today'
  get '/admin/application', to:'admin#application'
  get '/admin/other_application', to:'admin#other_application'
  get '/admin/employeelist', to:'admin#employeelist'
  get '/admin/:id/employeelist_edit',to:'admin#employeelist_edit'
  post'/admin/:id/employeelist_update', to:'admin#employeelist_update'
  post'admin/:id/employeelist_delete',to:'admin#employeelist_delete'
  get '/admin/management', to:'admin#management'
  get '/admin/schedule', to:'admin#schedule'
  get 'admin/schedule/:id',to:'admin#schedule_new'
  get '/admin/new_member', to:'admin#new_member'
  post '/admin/member_create', to:'admin#member_create'
  post '/admin/logout',to:'admin#logout'

  get '/member/:id',to:'member#top'
  post '/member/:id/start_time', to:'member#start_time'
  post '/member/:id/rest_start_time',to:'member#rest_start_time'
  post '/member/:id/rest_end_time',to:'member#rest_end_time'
  post '/member/:id/end_time',to:'member#end_time'
  get '/member/:id/calender', to:'member#calender'
  get '/member/:id/application', to:'member#application'
  get '/member/:id/attendance_management', to:'member#attendance_management'
  get '/member/:id/profile_edit',to:'member#profile_edit'
  post'member/:id/profile_update',to:'member#profile_update'
  post '/member/:id/logout',to:'member#logout'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
