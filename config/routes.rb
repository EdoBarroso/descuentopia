Descuentopia::Application.routes.draw do
  ActiveAdmin.routes(self)

  root :to => "home#index"
  
  devise_for :users
  resources :users, only: [:show, :update] do
    resources :surveys, path: "encuestas", only: [:index, :create, :update]
  end
  resources :discounts, path: "descuentos", only: [:index, :show]

end