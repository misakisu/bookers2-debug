Rails.application.routes.draw do
  devise_for :users
  root to: 'home#home'
  get 'home/about' => 'home#about'
  resources :users,only: [:show,:index,:edit,:update]
  resources :books, only: [:index, :show, :create, :edit, :update, :destroy]
end
