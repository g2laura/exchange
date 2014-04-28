Exchange::Application.routes.draw do
  root "dashboard#index"
  resources :messages

  devise_for :users
end
