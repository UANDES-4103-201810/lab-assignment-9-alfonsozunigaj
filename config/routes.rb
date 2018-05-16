Rails.application.routes.draw do
  resources :actor_movies
  resources :movies
  resources :addresses
  resources :categories
  resources :actors
  resources :directors

  root to: 'application#index'

  get '/persons/new', to: 'people#new'
  post '/persons/create', to: 'people#create'
  get '/persons/all', to: 'people#show_all'
  get '/persons/actor', to: 'people#show_actors'
  get '/persons/director', to: 'people#show_directors'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
