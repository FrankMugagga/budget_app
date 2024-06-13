# frozen_string_literal: true

Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/show'
  get 'categories/new'
  get 'categories/create'
  get 'categories/edit'
  get 'categories/update'
  get 'categories/destroy'
  get 'expenses/index'
  get 'expenses/show'
  get 'expenses/new'
  get 'expenses/create'
  get 'expenses/edit'
  get 'expenses/update'
  get 'expenses/destroy'
  get 'splash/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    authenticated :user do
      root to: 'users#index', as: :authenticated_root
    end
    unauthenticated :user do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
