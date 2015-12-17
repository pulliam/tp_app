Rails.application.routes.draw do

  root 'welcome#index'

  resources :users do
    resources :accounts
  end
  

  resources :sessions, only: [:create, :new, :destoy] 
  
  get '/signup', to: 'users#new' 

  get '/logout', to: 'sessions#destroy' 

  get '/login', to: 'sessions#new' 

  post '/login' => 'sessions#create'
 
end
