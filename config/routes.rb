Gallery::Application.routes.draw do

  devise_for :users

  devise_for :models

  get "sessions/new"

  resources :lists

  resources :images

  resources :categories

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"

  root :to => "images#index"

  resources :users

  resources :sessions

end
