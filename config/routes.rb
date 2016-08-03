Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.

  root 'pages#home'
  get 'about', to: 'pages#about'

  resources :articles
  get 'signup' => 'users#new'
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
