Rails.application.routes.draw do
  root 'articles#index'
  resources :articles, only: [:new, :create, :show]
  resources :categories, only: [:index, :show]
  resources :works, only: [:index, :show, :new, :create]
  resources :profiles, only: :index
end
