Gallery::Application.routes.draw do
  resources :images


  resources :categories


  resources :pictures
  
  # match ':controller(/:action(/:id))(.:format)'
  
  # root :to => "welcome#index"
end