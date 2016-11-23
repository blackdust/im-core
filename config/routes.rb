require 'sidekiq/web'

Rails.application.routes.draw do
  # 即时消息
  mount ActionCable.server => '/cable'

  # 队列
  mount Sidekiq::Web => '/sidekiq'

  devise_for :users, controllers: { 
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root to: 'index#index'

  
  namespace :admin do
    resources :users
    resources :organizations do
      get :tree_show, on: :collection
    end
  end


  resources :organizations do
    get :trees, on: :collection
    get :show_tree, on: :member
  end

  resources :chat_messages do
    get :history, on: :collection
  end

  get '/chat/:oid', to: 'chat#show', as: :chat
end
