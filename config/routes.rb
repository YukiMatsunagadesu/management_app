Rails.application.routes.draw do
  get '/', to: 'home#top'
  get '/admin', to:'admin#index'
  get '/admin/today', to:'admin#today'
  get '/admin/application', to:'admin#application'
  get '/admin/employeelist', to:'admin#employeelist'
  get '/admin/:id/employeelist_edit',to:'admin#employeelist_edit'
  post'/admin/:id/employeelist_update', to:'admin#employeelist_update'
  get '/admin/management', to:'admin#management'
  get '/admin/schedule', to:'admin#schedule'
  get '/admin/new_member', to:'admin#new_member'
  post '/admin/member_create', to:'admin#member_create'
  
  get '/member/:id',to:'member#top'
  get '/member/:id/calender', to:'member#calender'
  get '/member/:id/application', to:'member#application'
  get '/member/:id/attendance_management', to:'member#attendance_management'
  get '/member/:id/profile_edit',to:'member#profile_edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
