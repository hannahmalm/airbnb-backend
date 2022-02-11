Rails.application.routes.draw do

  #login
  get "/api/v1/login" to "api/v1/sessions#create"

  #logout
  get "/api/v1/logout" to "api/v1/sessions#destroy"

  #UPDATE THESE TO ONLY ALLOW SPECIFIC ROUTES
  namespace :api do 
    namespace :v1 do 
      
      resources :users
      resources :listings
      resources :locations
      resources :reservations
      resources :reviews
    end 
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
