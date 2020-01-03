Rails.application.routes.draw do

  resources :restaurants do
      resources :reviews, except: [:index, :show]
    collection do
      get 'search'
    end
  end




  root "restaurants#index" # this will load the homepage

  get "new" => "users#new"
  resources :users

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"



  # resources :users, only: [:new, :create]   #signup for new user

  resources :locations
  resources :reviews
  resources :categories

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
