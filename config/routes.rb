Rails.application.routes.draw do
  root to: 'home#index'

  resources :items, only:[:new, :create, :index]

  get "/:category_name", to: 'categories#show'
end
