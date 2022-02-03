Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :users, only: [:create]
  # get 'users/unsubscribe', to: 'users#unsubscribe'

  resources :unsubscribes
  require "sidekiq/web"
  mount Sidekiq::Web => "/sidekiq"
end
