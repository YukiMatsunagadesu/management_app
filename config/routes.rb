Rails.application.routes.draw do
  get '/', to: 'home#top'
  get '/admin', to:'admin#index'
  get '/admin/today', to:'admin#today'
  get '/admin/application', to:'admin#application'
  get '/admin/employeelist', to:'admin#employeelist'
  get '/admin/management', to:'admin#management'
  get '/admin/schedule', to:'admin#schedule'
  get '/member/top'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
