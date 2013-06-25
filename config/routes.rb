Gallery::Application.routes.draw do
  resources :lists


  resources :images


  resources :categories


  # root :to => "welcome#index"
end
