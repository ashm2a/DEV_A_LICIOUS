Rails.application.routes.draw do
  root to: "developers#index"

  devise_for :users
  get 'profile', to: 'pages#profile', as: 'user_profile'

  resources :developers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
