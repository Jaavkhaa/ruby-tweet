Rails.application.routes.draw do
  devise_for :users
  resources :profiles
  resources :likes, only: :create
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :tweets
  resources :tweets, except: [:edit, :update] do
    resources :comments, only: [:create, :destroy]
    member do
      post :retweet
    end
  end

  root to: 'tweets#index'
end
