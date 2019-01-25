Rails.application.routes.draw do

  resources :payments, only: [:index, :new, :create]
  get '/', to: 'welcome#index', as: 'welcome'
  get '/about', to: 'welcome#show', as: 'about'

  resources :charities
  resources :social_actions
  resources :events

  #user account management
  get '/users/:id', to: 'users#show', as: 'user'
  get '/join', to: 'users#new', as: 'join'
  post '/join', to: 'users#create'
  # resources :users

  #sessions management
  get '/sessions/new', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  post '/logout', to: 'sessions#destroy', as: 'logout'


end
