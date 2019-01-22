Rails.application.routes.draw do
  root 'home#index'
  resources :images

  resources :posts do
    resources :replies#, module: :posts
  end

  devise_for :users, controllers: {registrations: 'registrations'}

end
