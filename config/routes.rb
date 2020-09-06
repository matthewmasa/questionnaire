# frozen_string_literal: true

Rails.application.routes.draw do

  namespace :admin do
    resources :users
  end
  root to: 'posts#index'
  resources :posts, :only => [:index, :new, :create, :show, :update, :destroy]

end
