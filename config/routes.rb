Descuentopia::Application.routes.draw do
  ActiveAdmin.routes(self)

  root :to => "home#index"
  
  devise_for :users
  resources :users, only: [:show, :update]
  resources :surveys, path: "clubs", only: [:index]
  resources :discounts, path: "descuentos", only: [:index, :show]

end