# frozen_string_literal: true

Rails.application.routes.draw do
  resources :articles
  resources :authors
  root 'bugs#index'
  resources :bugs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
