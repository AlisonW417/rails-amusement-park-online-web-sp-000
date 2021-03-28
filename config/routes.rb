Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :attractions
  resources :rides
  root 'static#home'
  get '/signin', to: 'session#new'
  post '/signin', to: 'session#create'
  delete 'logout', to: 'session#destroy'
end
