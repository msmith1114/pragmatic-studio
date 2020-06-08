Rails.application.routes.draw do
  resources :users
  get '/signin', to: 'sessions#new'
  resource :session, only: [:new, :create, :destroy]
  get '/signup', to: 'users#new' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "movies#index"
  resources :movies do
    resources :reviews
  end
end