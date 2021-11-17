Rails.application.routes.draw do
  resources :password_resets
  get "sign-up", to: "registrations#new"
  post "sign-up", to: "registrations#create"
  get "sign-in", to: "sessions#new"
  post "sign-in", to: "sessions#create"
  delete "log-out", to: "sessions#destroy"

  resources :posts do
    resources :likes
    resources :comments
    # post "like", to: "likes#create"
    # delete "unlike", to: "likes#destroy"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "posts#index"

  namespace :api do
    namespace :v1 do
      get "sign-up", to: "registrations#new"
      post "sign-up", to: "registrations#create"
      get "sign-in", to: "sessions#new"
      post "sign-in", to: "sessions#create"
      delete "log-out", to: "sessions#destroy"
      resources :posts do
        resources :likes
        resources :comments
      end
      # get 'posts/index'
      # post 'posts/create'
      # delete 'posts/id', to: 'posts#destroy'
    end
  end
end
