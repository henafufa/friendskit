Rails.application.routes.draw do
  root 'home#index'
  get 'friends/new', to:'friends#new'
  get '/about', to:'home#about'
  # get '/friends', to:'friends#index'
  # get '/show', to:'friends#show'
  # get 'home/index'
  resources :friends
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
