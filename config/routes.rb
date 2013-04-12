Descuentopia::Application.routes.draw do
  if Rails.env.production?
    match "/" => redirect("http://soon.descuentopia.com")
  else
    root :to => 'home#index'
  end
  ActiveAdmin.routes(self)

  devise_for :users
  resources :users, only: [:show, :update]
  resources :surveys, path: "clubs", only: [:index]
  resources :discounts, path: "descuentos", only: [:index, :show]

end