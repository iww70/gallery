Gallery::Application.routes.draw do
  resources :users


  resources :lists


  resources :images


  resources :categories


  # root :to => "welcome#index"
end
