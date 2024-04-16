Rails.application.routes.draw do

  get 'users/index'
  get 'users/show'
  get 'users/edit'
  resources :users
  resources :books
  
  devise_for :users
  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
