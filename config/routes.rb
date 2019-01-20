Rails.application.routes.draw do
  root 'home#index'
  resources :images
  devise_for :users, controllers: {registrations: 'registrations'}

end
