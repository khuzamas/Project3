Rails.application.routes.draw do
  get 'fridges/home'
  root "fridges#home"
  devise_for :users
  resources :lists
  resources :fridges
  resources :items

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
