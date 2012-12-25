Tudescuento::Application.routes.draw do
  root :to => "home#index"
  
  devise_for :users
  resources :users
  resources :discounts, path: "descuentos", only: [:index, :show, :update, :create, :destroy]
  resources :discount_clubs, path: "clubs", only: [:index, :update, :create, :destroy]
end