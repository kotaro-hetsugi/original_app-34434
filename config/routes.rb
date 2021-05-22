Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'

  resources :posts do
    resources :comments ,only: [:create]
    resource :likes, only: [:create, :destroy]
    collection do
      get 'search'
      get 'search_candidate'
    end
  end
  resources :users, only: [:show]
  get 'abouts/summary'
end
