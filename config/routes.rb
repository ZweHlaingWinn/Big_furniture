Rails.application.routes.draw do
  get 'cart/show'
  devise_for :deliverymen
 
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :order_products
  resources :orders
  resources :products
  resources :categories


  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }

  get "cart" => 'cart#show'
  get "cart/add/:id" => "cart#add", :as => :add_to_cart
  post "cart/remove/:id" => "cart#remove", :as => :remove_from_cart
  post "cart/checkout" => "cart#checkout", :as => :checkout


  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
