Rails.application.routes.draw do

  root "site#index"

  resources :owners do 
  	resources :pets, only: [:index, :new, :create]
  	resources :appointments, only: [:index, :new, :create]
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'owners#new'

 
end
