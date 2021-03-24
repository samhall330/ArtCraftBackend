Rails.application.routes.draw do
  resources :reviews
  resources :softwares
  resources :equipment
  resources :specialties
  resources :collaborators
  resources :projects
  resources :users

  post '/login', to: 'users#login'
  post '/logout', to: 'users#logout'
  get '/verify', to: 'users#verify'
  post '/softwares', to: 'softwares#create'
  post '/projects', to: 'projects#create'
  # post '/users' to: 'users#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
