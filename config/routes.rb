Rails.application.routes.draw do
  # get 'trains/index'
  # get 'trains/new'
  # get 'trains/create'
  # get 'trains/show'
  # get 'trains/edit'
  # get 'trains/update'
  # get 'trains/destroy'
  get 'metro_services/new'
  # get 'metro_services/create'
  # get 'metro_services/edit'
  # get 'metro_services/update'
  # get 'metro_services/show'
  # # get 'members/index'
  # get 'members/new'
  # get 'members/create'
  # get 'members/show'
  # get 'members/edit'
  # get 'members/update'
  # get 'members/destroy'
  # # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/create'
  # get 'users/edit'
  # get 'users/send_user_to_member'
  # get 'members/find_user'
  

  resources :metro_services do
    resources :trains
  end
  # resources :trains

  #  root "metro_services#new"

# --------------------------------------
  
  resources :users do
    resources :members
  end


  devise_for :welcomes , :controllers => {registrations: 'registrations'} do
    get 'devise/sessions#destroy'
  end

# # root "users#index"
  root "users#new"
end
