Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  root to: "celebrities#index"
  resources :users, only: [:new, :create, :show]
  get "dashboard", to: "pages#dashboard", as: :dashboard
  resources :celebrities, except: [:destroy] do
    resources :bookings, only: [:index, :new, :create, :update]
    patch "bookings/:id/accept", to: "bookings#accept", as: :accept
    patch "bookings/:id/refuse", to: "bookings#refuse", as: :refuse
  end



  # Defines the root path route ("/")
  # root "posts#index"
end
