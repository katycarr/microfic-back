Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :fics, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:create]

  post '/login', to: 'auth#create'

  get '/get_user', to: 'auth#show'

end
