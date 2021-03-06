Rails.application.routes.draw do
  resources :logs
  resources :pqr_trackings
  resources :statuses
  resources :pqrs
  resources :docs
  devise_for :users
  get 'home/index' 
  resources :departments
  resources :permission_roles
  resources :roles
  resources :permissions
  resources :users
  resources :admins  
  get '/users_json', to: 'users_json#metodo'  
  get '/pqr_trackingsDepartment', to: 'pqr_trackings#departmentView'

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
