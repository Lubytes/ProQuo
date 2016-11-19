Rails.application.routes.draw do
  resources :props
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/register', to: 'user#new'
  post '/register', to: 'user#create'
  get '/users/:username', to: 'user#show', as: 'profile'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get    '/logout',  to: 'sessions#destroy'
  get    '/about',   to: 'application#about'
  
  root to: 'application#index'
end
