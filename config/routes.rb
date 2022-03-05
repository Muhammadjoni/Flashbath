Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :bathrooms do
    collection do
      get :my_rents
    end

    resources :reviews, only: :create

    resources :bookings, only: :create
  end

  get 'top_reviews', to: 'reviews#top', as: :top_reviews

  resources :bookings, only: [:destroy] do
    collection do
      get :my_bookings
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
