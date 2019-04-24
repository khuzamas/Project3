Rails.application.routes.draw do
  get 'fridges/home'



  
  devise_for :users
  resources :lists

  resources :fridges do
    resources :items
  end

  get 'fridges/:id/empty' => 'fridges#empty'
  get 'fridges/:id/add_user' => 'fridges#add_user'
  patch 'fridges/:id/update_user' => 'fridges#update_user'


  devise_scope :user do
    authenticated :user do
      root 'fridges#index', as: :authenticated_root
    end

    unauthenticated do
      root 'fridges#home', as: :unauthenticated_root
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end