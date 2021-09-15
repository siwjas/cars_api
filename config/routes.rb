Rails.application.routes.draw do
  
  # apipie
  root to: "apipie/apipies#index"

  namespace :api do
    namespace :v1 do
      resources :cars

      resources :manufacturers do
        resources :cars, only: [:show, :creae, :update, :destroy]
      end
    end
  end
  
end
