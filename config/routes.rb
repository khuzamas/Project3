Rails.application.routes.draw do
  get 'fridges/home'



  root "fridges#home"
  devise_for :users
  resources :lists
  resources :fridges
  resources :items

  get 'fridges/:id/add_user' => 'fridges#add_user'
  patch 'fridges/:id/update_user' => 'fridges#update_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
