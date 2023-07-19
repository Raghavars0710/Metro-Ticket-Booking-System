Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/create'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/destroy'

  root "users#index"
  resources :users
   

  # devise_for :welcomes , :controllers => {registrations: 'registrations'} do
  devise_for :welcomes , :controllers => {registrations: 'registrations'} do
    get 'devise/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
