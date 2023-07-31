Rails.application.routes.draw do
  devise_for :users ,:controllers => {registrations: 'registrations'} do
    get 'devise/sessions#destroy'
  end

  # resources :trains

  #  root "tickets#index"
  get "trains/all_trains"
  get "tickets/all_tickets"
  get "tickets/user_ticket"
  get "users/all_users"
  get "users/home"

  resources :trains do
    resources :tickets
  end
  resources :tickets
  resources :metro_services

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



# # root "users#index"
  root "metro_services#index"
  
end
