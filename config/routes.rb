Rails.application.routes.draw do
  resources :questions
  resources :choices
  resources :clicks
  put 'surveys/:id/upvote', to: 'surveys#upvote', as: 'survey_quote'
  resources :surveys do
    member do
      put 'vote'
     end
    end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  
  get "design/:id", to: "surveys#design"
  get "take", to: "surveys#take"
  # Defines the root path route ("/")
  root "surveys#index"
end
