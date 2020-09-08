# frozen_string_literal: true

Rails.application.routes.draw do

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete'login', to: 'sessions#destroy'
  namespace :admin do
    resources :users
  end
  root to: 'posts#index'
  resources :posts, :only => [:index, :new, :create, :show, :update, :destroy]

end
