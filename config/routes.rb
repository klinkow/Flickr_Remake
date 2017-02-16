Rails.application.routes.draw do
  devise_for :users
  root to: "images#index"

  resources :users do
    resources :images
  end

  resources :images do
    resources :tags
  end
end
