Exchange::Application.routes.draw do
  root "dashboard#index"
  get "/messages/new/:recipient_id", to: "messages#new", as: "new_message"

  resources :messages, except: ["new"]

  resources :profiles, only: ["show", "edit", "update"]

  devise_for :users
end
