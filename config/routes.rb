Exchange::Application.routes.draw do
  root "dashboard#index"
  
  resources :messages
  resources :profiles, only: ["show", "edit", "update"]

  devise_for :users
end
