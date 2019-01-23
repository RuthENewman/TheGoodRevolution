Rails.application.routes.draw do

  # root to: "payments#index"
  resources :payments, only: [:index, :new, :create]

  # get 'payments/index'
  # get 'payments/new'
  # get 'payments/create'
  get '/', to: 'welcome#index', as: 'welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/charities', to: 'charities#index', as: 'charities'
  # get '/charities/new', to: 'charities#new', as: 'new_charity'
  # post '/charities', to: 'charities#create', as: 'charities'
  # get '/charities/:id', to: 'charities#show', as: 'charity'
  # get '/charities/:id/edit', to: 'charities#edit', as: 'edit_charity'
  # patch '/charities/:id', to: 'charities#update', as: 'charity'
  # delete '/charities/:id', to: 'charities#destroy', as: 'charity'
  resources :charities
  resources :social_actions
  resources :events
  resources :donors
  resources :doantions
  # resources :events
  # root 'welcome#index'
  # get '/social_actions', to:'social_actions#index', as: 'social_actions'
  # get '/social_actions/new', to: 'social_actions#new', as: 'new_social_action'
  # post '/social_actions', to: 'social_actions#create', as: 'social_actions'
  # get '/social_actions/:id' , to: 'social_actions#show', as: 'social_action'
  # get '/social_actions/:id/edit', to: 'social_actions#edit', as: 'edit_social_action'
  # patch '/social_actions/:id', to: 'social_actions', as: 'social_action'
  # delete '/social_actions/:id', to: 'social_actions', as: 'social_action'

  # get '/events', to: 'events#index', as: 'events'
  # get '/events/:id', to: 'events#show', as: 'event'

  # get '/donors/new', to: 'donors#new', as: 'new_donor'


end
