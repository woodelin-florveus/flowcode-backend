Rails.application.routes.draw do
  # resources :projects
  # resources :collections
  # resources :users

  # USER ROUTES
  get '/users', to: 'users#index'
  get '/users/name', to: 'users#get_all_names'
  get '/users/:id', to: 'users#show'

  # PROJECT ROUTES
  get '/projects', to: 'projects#index'
  post '/projects', to: 'projects#create'
  get '/projects/:id', to: 'projects#show'
  delete '/projects/:id', to: 'projects#delete'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
