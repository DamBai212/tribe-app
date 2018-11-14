Rails.application.routes.draw do
  get 'dashboard/show'
  get 'home/show'
  resources :courses
  resources :users, only: [:index, :edit, :show]

  get 'auth/oauth2/callback' => 'auth0#callback'
  get 'auth/failure' => 'auth0#failure'

  get 'dashboard' => 'dashboard#show'

  root 'home#show'

  get '/signup', to: 'users#new', as: 'signup'
  post '/signup', to: 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
