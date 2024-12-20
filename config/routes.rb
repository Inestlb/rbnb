Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  root to: "pages#home"
  get "home", to: "pages#home", as: :home
  resources :users, only: [:new, :create, :show]
  get "dashboard", to: "pages#dashboard", as: :dashboard
  resources :celebrities, except: [:destroy] do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: [:index, :update]
  get "my_bookings", to: "bookings#my_bookings", as: :my_bookings
  patch "bookings/:id/accept", to: "bookings#accept", as: :accept
  patch "bookings/:id/refuse", to: "bookings#refuse", as: :refuse



  # Defines the root path route ("/")
  # root "posts#index"
end
