Rails.application.routes.draw do
  get 'about' => 'home#about'
  devise_for :users
  root to: 'home#top'
  resources :users#,only: [:show,:index,:edit,:update]
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]


end
