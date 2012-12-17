Tudescuento::Application.routes.draw do
  authenticated :user do
    root :to => 'users#profile'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end