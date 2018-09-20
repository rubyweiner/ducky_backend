Rails.application.routes.draw do
  resources :profiles
  resources :occupations
  resources :educations
  resources :skills
  resources :friendships
  resources :users, only: [:create, :show, :index]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
