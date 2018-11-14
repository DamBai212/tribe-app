Rails.application.routes.draw do
  resources :courses
  resources :users, only: [:index, :edit, :show]

  get '/signup', to: 'users#new', as: 'signup'
  post '/signup', to: 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
