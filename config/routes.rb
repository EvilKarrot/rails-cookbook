Rails.application.routes.draw do
  resources :categories, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]
end
