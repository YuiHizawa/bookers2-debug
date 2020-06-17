Rails.application.routes.draw do
  root to: 'home#top'
  get 'about' => 'home#about'
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  devise_for :users

end
