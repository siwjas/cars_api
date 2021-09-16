Rails.application.routes.draw do
  
  apipie
  root to: "apipie/apipies#index"

  resources :cars
  resources :manufacturers do
    resources :cars, only: :show
  end  
end
