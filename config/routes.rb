Rails.application.routes.draw do
  # get '/home'         , to: 'publics#home'         , as:  'home'           
  get '/published-articles'     , to: 'publics#articles'     , as:  'publics_articles'     
  get '/published-emissions'    , to: 'publics#emissions'    , as:  'publics_emissions'        
  get '/about'        , to: 'publics#about'        , as:  'about'      
  get '/contact'      , to: 'publics#contact'      , as:  'contact'      
  
  devise_for :users

Article.all.where(published: true).each do |article|
  get "/published-articles/#{article.slug}", controller: :publics, action: :show_article, id: article.id
end

Emission.all.where(published: true).each do |emission|
  get "/published-emissions/#{emission.title}", controller: :publics, action: :show_emission, id: emission.id
end


  resources :contents, path: "rtpx/admin/contents"
  resources :emissions, path: "rtpx/admin/emissions"
  resources :articles, path: "rtpx/admin/articles"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root 'pages#home'
  root 'publics#home'
  # root "posts#index"
end
