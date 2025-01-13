Rails.application.routes.draw do
  resources :categories, except: [:edit, :update]
end
