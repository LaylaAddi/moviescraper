Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'

  get 'pages/about'

  get 'pages/contact'

  
end
