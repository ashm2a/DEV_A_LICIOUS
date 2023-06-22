Rails.application.routes.draw do
  root to: "developers#index"
  devise_for :users
  resources :developers do
    resources :bookings, only: [:new, :create]
  end
  get 'profile', to: 'pages#profile', as: 'user_profile'
  patch 'bookings/:id/accept', to: 'bookings#accept', as: 'accept_booking'
  patch 'bookings/:id/refuse', to: 'bookings#refuse', as: 'refuse_booking'
end
