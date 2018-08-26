Rails.application.routes.draw do
  root 'welcomes#index'

  resources :dashboards, only: :index
  resources :memos
  resources :tasks

  # ログイン認証
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signout' => "sessions#destroy", as: :signout

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
