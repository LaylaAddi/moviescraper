Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'pages#index'

  get 'pages/about'

  get 'pages/contact'

  
end
