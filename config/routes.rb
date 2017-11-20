Rails.application.routes.draw do

  resources :locations do
    resources :assets, only: [:create]
  end
  root 'locations#index'
end
