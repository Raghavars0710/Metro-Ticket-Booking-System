Rails.application.routes.draw do


  devise_for :welcomes , :controllers => {registrations: 'registrations'} do
    get 'devise/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
