Rails.application.routes.draw do
  namespace :api do
  namespace :v1 do
 

#SESSION ROUTES 
get 'signup', to: 'sessions#signup'
#SIGNUP POSTS TO USERS CREATE
post 'signup', to: "users#create"
get 'login'
post 'login', to: 'sessions#create'
get'get_current_user', to: 'sessions#get_current_user'
delete 'logout', to: 'sessions#destroy'


post 'products/create', to: 'products#create'

#USERS DELETE NOT YET IMPLEMENTED
delete 'users/delete', to: 'users#destroy'
#ONLY USED FOR USER AUTH SIGNUP
 devise_for :users
 resources :users do
    resources :products
    resources :categories
  end


get 'products', to: 'products#index'

  resources :products 
  resources :images
  resources :categories 

end
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
