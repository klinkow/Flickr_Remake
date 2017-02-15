Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :users do
    resources :tags
  end

  resources :images do
    resources :tags
  end
end
