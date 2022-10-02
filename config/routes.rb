Rails.application.routes.draw do
  get 'home/_header'
  get 'home/about'
  get 'home/profile'
  devise_for :users

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  resources :posts

  get 'home/about'
  get 'home/profile'

  root "posts#index"
end
