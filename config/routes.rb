Rails.application.routes.draw do
  get '/', to: 'welcome#index', as: 'welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/charities', to: 'charities#index'
  # resources :charities
  # resources :social_actions
  # resources :events
  # root 'welcome#index'
  get '/social_actions', to:'social_actions#index', as: 'social_actions'
  get '/events', to:'events#index', as: 'events'
  get '/charities/new', to: 'charities#new', as: 'new_charity'
  get '/charities/:id', to: 'charities#show', as: 'charity'
  get '/social_actions/new', to: 'social_actions#new', as: 'new_social_action'
  get '/social_actions/:id' , to: 'social_actions#show', as: 'social_action'
  get '/events/:id', to: 'events#show', as: 'event'
end
