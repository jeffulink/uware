Rails.application.routes.draw do
  resources :bookings
  resources :sales
  resources :companies
  resources :leads
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
get '/logout', to: 'sessions#destroy'
end


