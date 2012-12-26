Tudescuento::Application.routes.draw do
  ActiveAdmin.routes(self)

  root :to => "home#index"
  
  devise_for :users
  resources :users, only: :show
end