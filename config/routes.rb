Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/thank_you", to: 'pages#thank_you'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :lessons do
    resources :bookings, only: :create
  end
  resources :bookings, except: [:new, :create]
end
