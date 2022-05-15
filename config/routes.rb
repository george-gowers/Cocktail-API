Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # get '/api/v1/cocktails/:name', to: 'api/v1/cocktails#name'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get 'cocktails/:name', to: 'cocktails#name'
      # resources :cocktails, only: [ :show ]
    end
  end





end
