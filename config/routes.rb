Rails.application.routes.draw do
  root to: "developers#index"
  devise_for :users
  resources :developers do
    resources :bookings, only: [:new, :create]
  end
  get 'profile', to: 'pages#profile', as: 'user_profile'
end
