Rails.application.routes.draw do
  get 'fridges/home'
  root "fridges#home"
  
  devise_for :users
  # root 'users/sign_in'
  root 'fridges#new'
  resources :fridges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
