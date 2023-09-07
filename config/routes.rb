Rails.application.routes.draw do

  devise_for :users ,:controllers => {registrations: 'registrations'} do
    get 'devise/sessions#destroy'
  end

  get "trains/all_trains"
  get "tickets/all_tickets"
  get "tickets/user_ticket"
  get "users/all_users"
  get '/members/show_member.:id', to: 'members#show_member', as: 'show_member'
  get '/metro_services/search', to: 'metro_services#search', as: 'metro_services_search'
  resources :tickets

  resources :metro_services

  resources :trains do
    resources :tickets
  end

  resources :users do
    resources :metro_services
  end

  resources :metro_services do
    resources :trains
  end

  resources :users do
    resources :members
  end

  root "metro_services#index"

end
