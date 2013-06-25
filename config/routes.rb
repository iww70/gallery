Gallery::Application.routes.draw do
  resources :selects

  resources :images

  resources :categories

  # root :to => "welcome#index"
end
