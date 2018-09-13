Rails.application.routes.draw do
  root 'welcomes#index'

  resources :dashboards, only: :index
  resources :memos
  resources :tasks do
    resources :progressions, only: [:edit, :create, :update, :destroy]
  end

  # ログイン認証
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signout' => "sessions#destroy", as: :signout

  # API
  namespace :api do
    namespace :v1 do
      get '/heatmap/graph', to: 'heatmap#graph'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
