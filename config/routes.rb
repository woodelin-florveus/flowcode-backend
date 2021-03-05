Rails.application.routes.draw do
  # resources :projects
  # resources :collections
  # resources :users

  get '/users', to: 'users#index'
  get '/users/name', to: 'users#get_all_names'
  get '/users/:id', to: 'users#show'
  # get '/projects' to: 'projects#index'
  # get '/projects/:id' to: 'projects#show'
  # get '/projects/:id' to: 'projects#delete'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
