Rails.application.routes.draw do
  root 'mazes#index'
  
  resources :mazes
end

