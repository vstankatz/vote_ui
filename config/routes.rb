Rails.application.routes.draw do

  root to: 'information#index'

  # User routes
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  # Message routes
  resources :messages

  #information routes
  resources :information
end
