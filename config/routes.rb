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
<<<<<<< HEAD
  root :to => "home#index"

=======
  
  root to: "home#index"
>>>>>>> af65e83b33f4587bdfb5d7f5fb985e34014d911d
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
