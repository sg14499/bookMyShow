Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
        sessions: 'users/sessions'}

  #devise_for :users
  resources :movies
  resources :users do 
    resources :bookings
  end
    
  resources :locations do
    resources :cinemas do
      resources :screens do
        resources :slots
      end
    end
  end
root "users#home"
#root "users#index"

get '/search',to: "movies#search"

#post '/users/:user_id/bookings/new' => 'bookings#create'

#get '/users/:user_id/bookings/new' => 'bookings#create'
end
