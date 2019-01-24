Rails.application.routes.draw do

  resources :payments, only: [:index, :new, :create]
  get '/', to: 'welcome#index', as: 'welcome'
  get '/about', to: 'welcome#show', as: 'about'

  resources :charities
  resources :social_actions
  resources :events
  resources :donors

  #donor account management
  get '/join', to: 'donors#new', as: 'join'
  post '/join', to: 'donors#create'
  # get '/donors/:id', to: 'donors#show', as: 'donor'

  #sessions management
  get '/sessions/new', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  post '/logout', to: 'sessions#destroy', as: 'logout'


end
