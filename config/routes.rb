Rails.application.routes.draw do
  # get 'teachers/index'
  # get 'teachers/show'
  # get 'teachers/new'
  # get 'appointments/index'
  # get 'appointments/show'
  # get 'appointments/create'

  devise_for :users
  
  root to: 'appointments#index'

  resources :users

  resources :teachers

  resources :appointments

end
