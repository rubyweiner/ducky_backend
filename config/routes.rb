Rails.application.routes.draw do
  resources :occupations
  resources :educations
  resources :skills
  resources :friendships
  resources :users, only: [:create]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end