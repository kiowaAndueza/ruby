Rails.application.routes.draw do
  #resources :sessions
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy'
  resources :sessions, only: [:create, :destroy, :new]

  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "categories#index"
  get 'categories/index', to: 'categories#index' , as: :category_index
  get 'categories/show', to: 'categories#show'
  get 'categories/new', to: 'categories#new', as: :new_category
  post "categories", to: "categories#create"
  get 'categories/edit', to: 'categories#edit'
  get 'categories/:id/edit', to: "categories#edit", as: :edit_category
  post "categories/:id", to: "categories#update", as: :category
  get 'categories/:id', to: "categories#show"
  delete "categories/:id", to: "categories#delete"

  get "articles/index", to: "articles#index" , as: :article_index
  get "articles/new", to: "articles#new", as: :new_article
  post "articles", to: "articles#create"
  get "articles/:id", to: "articles#show"
  get "articles/:id/edit", to: "articles#edit", as: :edit_article
  post "articles/:id", to: "articles#update", as: :article
  delete "articles/:id", to: "articles#delete"

end
