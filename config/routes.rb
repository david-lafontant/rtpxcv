Rails.application.routes.draw do
  get 'publics/home'
  get 'publics/articles'
  get 'publics/emissions'
  get 'publics/about'
  get 'publics/contact'
  devise_for :users

  resources :contents
  resources :emissions
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root 'pages#home'
  root 'publics#home'
  # root "posts#index"
end
