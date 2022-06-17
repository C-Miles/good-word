# frozen_string_literal: true

Rails.application.routes.draw do
  root 'chatroom#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'message', to: 'messages#create'
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
  mount ActionCable.server, at: '/cable'
end
