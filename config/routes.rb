Tudescuento::Application.routes.draw do
  root :to => "home#index"
  
  devise_for :users
  resources :users
  resources :discounts, path: "descuentos"
end