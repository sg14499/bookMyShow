Rails.application.routes.draw do

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
end
