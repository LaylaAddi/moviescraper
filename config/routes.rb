Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  
  resource :subscription
  resource :card
  resources :movies
  
  root 'pages#index'
  get 'pages/about'
  get 'pages/contact'
  get "um", to: "movies#user_movies"
end
