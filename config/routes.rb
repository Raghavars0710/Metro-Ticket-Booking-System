Rails.application.routes.draw do


  # resources :trains

  #  root "tickets#index"


  resources :trains do
    resources :tickets
  end


  resources :users do
    resources :metro_services
  end


# --------------------------------------



  resources :metro_services do
    resources :trains
  end
  
  # get 'metro_services/new'
  
  resources :users do
    resources :members
  end

  devise_for :welcomes , :controllers => {registrations: 'registrations'} do
    get 'devise/sessions#destroy'
  end

# # root "users#index"
  root "users#new"
end
