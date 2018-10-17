Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :teams
  resources :projects do
    resources :comments
  end
 
  as :user do
    put '/user/confirmation/' => 'confirmations#update', :via => :patch, :as => :update_user_confirmation
  end

   devise_for :users, controllers: {
  	registrations: 'registrations',
  	confirmations: 'confirmations'
  }
  
  root 'home#index'
end
