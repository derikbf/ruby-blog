Rails.application.routes.draw do
  resources :categories
  root 'articles#index'

  resources :articles
end
