Rails.application.routes.draw do

  get '/' => "sessions#welcome"
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  delete '/logout' => 'sessions#destroy'
  resources :player_ratings
  resources :units do 
    resources :player_ratings, only: [:new, :index]
  end
  resources :factions
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
