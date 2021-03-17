Rails.application.routes.draw do
  resources :reviews
  resources :softwares
  resources :equipment
  resources :specialties
  resources :collaborators
  resources :projects
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
