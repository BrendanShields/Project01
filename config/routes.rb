Rails.application.routes.draw do
  root 'home#index'



  resources :images do
    member do
      put 'like', to: 'images#like'
      put 'unlike', to: 'images#unlike'
    end
  end

  resources :posts do
    resources :replies#, module: :posts
  end

  devise_for :users, controllers: {registrations: 'registrations'}
  resources :users, only: [:show]
end
