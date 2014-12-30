Rails.application.routes.draw do
  root "articles#index"

  resources :articles, only: [:index, :new, :create]

  resources :foo
  resources :bar
end
