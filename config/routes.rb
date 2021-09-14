Rails.application.routes.draw do
  
  apipie
  resources :cars

  resources :manufacturers do
    resources :cars, only: [:show, :creae, :update, :destroy]
  end
end
