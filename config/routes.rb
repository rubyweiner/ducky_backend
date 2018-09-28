Rails.application.routes.draw do
  resources :posts
  resources :followships
  resources :userskills
  resources :profiles
  resources :occupations
  resources :educations
  resources :skills
  resources :friendships
  resources :users, only: [:create, :show, :index]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
