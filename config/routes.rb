Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  resources :posts

  get 'home/about'
  get 'home/_header'

  root "posts#index"
end
