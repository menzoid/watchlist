Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'

  resources :lists, only: [:show, :index, :create, :new, :destroy] do
    resources :bookmarks, only: [:create, :new]
    resources :reviews, only: [:create, :new]
  end
  resources :bookmarks, only: [:destroy]
  resources :reviews, only: [:destroy]
end
