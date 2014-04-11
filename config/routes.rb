Store::Application.routes.draw do
  resources :users

  root :to => 'products#index'
  resources :products
end
