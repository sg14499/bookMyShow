Rails.application.routes.draw do
  get 'user/show'
  get 'user/new'
  devise_for :users
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
root "user#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
