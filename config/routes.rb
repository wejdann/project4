Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  devise_for :users
  root 'visitors#index'
  resources :visitors , :posts
  get "bootstrap", to: "visitors#bootstrap"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
