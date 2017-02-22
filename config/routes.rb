Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  mount Attachinary::Engine => "/attachinary"
  root to: 'pages#home'
  get "/thank_you", to: 'pages#thank_you'
  get "/dashboard", to: 'dashboards#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :lessons do
    resources :bookings, only: :create
  end
  resources :bookings, except: [:new, :create]
end
