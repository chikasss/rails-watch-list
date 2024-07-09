Rails.application.routes.draw do

  # Defines the root path route ("/")
  # root "posts#index"
  # root "lists#index", as: :lists
  # root to: "lists#index"
  resources :lists, only: [:index, :new, :create, :show]

  # get "lists", to: "lists#index", as: :lists
  # get "lists/new", to: "lists#new", as: :new
  # post "lists", to: "lists#create"
  # get "lists/:id", to: "lists#show", as: :list

  get "bookmarks/new", to: "bookmarks#new"
  post "bookmarks", to: "bookmarks#create"
end
