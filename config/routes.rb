Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "categories#index"
  resources :categories, only: [:show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: [:new, :create]
    resources :recipes, only: [:show]
  end

  resources :bookmarks, only: [:destroy]
  resources :reviews, only: [:destroy]
end
