Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # get '/api/v1/cocktails/:name', to: 'api/v1/cocktails#name'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :cocktails, only: [ :show ] do
        collection do
          get :search
        end
      end
    end
  end





end
