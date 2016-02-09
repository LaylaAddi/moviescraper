Rails.application.routes.draw do
  resources :movies
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'pages#index'

  get 'pages/about'

  get 'pages/contact'

  get "um", to: "movies#user_movies"
end
