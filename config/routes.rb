Rails.application.routes.draw do
  #development route for map
  
  root to: 'information#index'

  # User routes
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  # Post routes
  resources :posts

  # Information routes
  resources :information

  # Private messaging routes
  resources :conversations do
    resources :messages
   end

end
