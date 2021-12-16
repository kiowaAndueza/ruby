Rails.application.routes.draw do
  resources :users
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "categories#index"
  get 'categories/index', to: 'categories#index'
  get 'categories/show', to: 'categories#show'
  get 'categories/new', to: 'categories#new', as: :new_category
  post "categories", to: "categories#create"
  get 'categories/edit', to: 'categories#edit'
  get 'categories/:id/edit', to: "categories#edit", as: :edit_category
  post "categories/:id", to: "categories#update", as: :category
  get 'categories/:id', to: "categories#show"
  delete "categories/:id", to: "categories#delete"


end
