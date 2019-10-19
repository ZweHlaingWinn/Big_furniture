Rails.application.routes.draw do
  resources :own_orders
  resources :own_design_products
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
  resources :users
  get "edit_password/:user_id" => "users#edit_password", as: :edit_password
  patch "update_password/:user_id" => "users#update_password"
  get "edit_profile_info/:user_id" => "users#edit_profile_info", as: :edit_profile_info
  patch "update_profile_info/:user_id" => "users#update_profile_info"
  get "edit_profile_password/:user_id" => "users#edit_profile_password", as: :edit_profile_password
  patch "update_profile_password/:user_id" => "users#update_profile_password"
  get "user_profile/:user_id" => "users#user_profile", as: :user_profile

  get "cart" => 'cart#show'
  get "cart/add/:id" => "cart#add", :as => :add_to_cart
  post "cart/remove/:id" => "cart#remove", :as => :remove_from_cart
  post "cart/checkout" => "cart#checkout", :as => :checkout


  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
