Rails.application.routes.draw do

  resources :line_items
  resources :carts, only: [:new, :create, :destroy, :show]
  root to: "home#index"

  resources :products

  resources :session

  #resources for admin
  resources :admin, only: [:new, :create, :destroy]

  resources :page

  resources :user do
  	resources :message , only: [ :new , :index , :destroy , :create , :edit , :update]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
