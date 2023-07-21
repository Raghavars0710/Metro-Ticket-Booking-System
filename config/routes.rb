Rails.application.routes.draw do
  # get 'members/index'
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

  
  resources :users do
    resources :members
  end


  devise_for :welcomes , :controllers => {registrations: 'registrations'} do
    get 'devise/sessions#destroy'
  end

# root "users#index"
  root "users#new"
end
