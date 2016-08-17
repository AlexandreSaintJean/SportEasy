Rails.application.routes.draw do


  # get 'users/create'

  # get 'users/new'

  # get 'users/show'

  # get 'users/edit'

  # get 'users/update'

  # get 'users/destroy'

  devise_for :users
  root to: 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :users, only: [:show, :update]

    resources :products do
      resources :posts, only: [:create]
      resources :bookings, only: [:create, :update]
    end
end
