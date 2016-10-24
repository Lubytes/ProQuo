Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/register', to: 'user#new'
  post '/register', to: 'user#create'
  get '/users/:username', to: 'user#show', as: 'profile'

  root to: 'application#index'
end
