Rails.application.routes.draw do
  
  
   resources :students do
    post :get_barcode, on: :collection
  end
  
  resources :rooms
  resources :hostel_blocks
  resources :sessions, :as => 'sessions_that_dont_anger_devise'
  resources :hostel_forms
  resources :staffs
  devise_for :users
  root 'home#index'
   
  get 's_page/news'

  get 'page/contact'
 get 'visitors/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
