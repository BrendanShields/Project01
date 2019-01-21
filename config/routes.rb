Rails.application.routes.draw do
  root 'home#index'
  resources :images
  resources :posts
  devise_for :users, controllers: {registrations: 'registrations'}

end
