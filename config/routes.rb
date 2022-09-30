Rails.application.routes.draw do
  resources :posts

  get 'home/about'
  get 'home/_header'

  root "posts#index"
end
