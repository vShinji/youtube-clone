Rails.application.routes.draw do
  resources :dislikes, only:[:create, :destroy]
  resources :likes, only:[:create, :destroy, :index]
  resources :posts
  devise_for :users
  root to: "posts#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "posts/:id/download", to: "posts#download", as: "download_post"
  get "pages/uploads"
end
