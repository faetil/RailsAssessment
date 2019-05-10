Rails.application.routes.draw do
  resources :orders
  resources :carts
  resources :listings
  resources :charges
  devise_for :users

  get '/home/contactus', to: 'home#contactus'
  get '/home/aboutus', to: 'home#aboutus'
  root "listings#landing"
end