Rails.application.routes.draw do
  devise_for :users
  #resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to:"accueil#show"


  get '/businesses/:id', to: 'businesses#show'

  get '/admin/businesses', to: 'admin/accueil#show'


end
