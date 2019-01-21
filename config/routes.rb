Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/charities', to: 'charities#index'
  get '/social_actions', to:'social_actions#index'
  get '/events', to:'events#index'
  get '/charities/:id', to: 'charities#show'
  get '/social_actions/:id' , to: 'social_actions#show'
  get '/events/:id', to: 'events#show'
end
