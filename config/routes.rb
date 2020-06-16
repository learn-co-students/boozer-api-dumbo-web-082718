Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :ingredients
      resources :cocktails
      resources :proportions
      resources :users
      resources :favorite_drinks
    
      post '/login' => 'sessions#create'
      get '/logout' => 'sessions#destroy'
      post '/signup', to: 'users#create'
    end
  end
end
