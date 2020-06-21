Rails.application.routes.draw do
  get 'home/about' => 'home#about'
  devise_for :users
  root to: 'home#top'

  resources :users do
  	member do
  		get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
  	resource :favorites, only: [:create, :destroy]
  	resources :book_comments, only: [:create, :destroy]
  end

end
