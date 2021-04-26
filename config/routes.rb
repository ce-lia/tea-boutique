Rails.application.routes.draw do
  root to: 'home#index'
  get '/dashboard', to: 'merchant#dashboard'
  devise_for :merchants
  devise_for :clients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
