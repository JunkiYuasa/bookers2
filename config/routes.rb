Rails.application.routes.draw do
  get "/home/about" => "homes#about", as: "about"
  
  devise_for :users
  root to: "homes#top"

  resources :users, only: [:index, :show, :edit, :update, :destroy]
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
