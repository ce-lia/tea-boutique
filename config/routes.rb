Rails.application.routes.draw do
  root to: 'home#index'
  get '/dashboard', to: 'warehouse#dashboard'
  devise_for :merchants, path: 'merchants'
  devise_for :clients, path: 'clients'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
