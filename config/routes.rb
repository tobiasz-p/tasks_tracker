# frozen_string_literal: true

Rails.application.routes.draw do
  resources :assignments
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get 'users', to: 'devise/sessions#new'
  end

  devise_for :users
  get 'home/index'
  get 'home/about'

  root to: 'home#index'

  resources :tasks
end
