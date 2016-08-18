Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"

  devise_for :users
  root to: 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :users, only: [:update]
    resources :categories, only: [:show]
    get '/dashboard', to: 'users#dashboard'


    resources :products do
      resources :posts, only: [:create]
      resources :bookings, only: [:create, :update]
    end
end
