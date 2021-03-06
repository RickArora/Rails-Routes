Rails.application.routes.draw do
  resources :users, only: [:show, :index, :create, :destroy, :update]
  resources :artworks, only: [:show, :index, :create, :destroy, :update]
  resources :artwork_shares, only: [:create, :destroy]
  # get '/users/:id', to: 'users#show'
  # get '/users', to: 'users#index'
  # post '/users', to: 'users#create', as: 'users'
  # get '/users/new', to: 'users#new', as: 'new_user'
  # get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  # patch '/users/:id', to: 'users#update'
  # put '/users/:id', to: 'users#show'
  # delete '/users/:id', to: 'users#destroy'
end


