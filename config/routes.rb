Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/faq', to: 'questions#index', as: 'faq'
  resources :wishes, only: [:new, :create, :edit, :update, :destroy]
  resources :users, only: [:show]
end
