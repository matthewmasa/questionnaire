# frozen_string_literal: true

Rails.application.routes.draw do

  resources :posts, :only => [:index, :new, :create, :show, :update, :destroy]

end
