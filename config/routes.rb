Rails.application.routes.draw do
  resources :vehicle_histories
  resources :shipping_histories
  resources :flight_histories
  resources :electricity_histories
  resources :users

  get "/me", to: "users#show"
  post "/signin", to: "sessions#create"
  delete "/signout", to: "sessions#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
