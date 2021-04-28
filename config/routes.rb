Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'posts#index'

  resources :posts do
    resources :comments ,only: [:create]
    collection do
      get 'search'
      get 'search_candidate'
    end
  end
  resources :users, only: [:show]
end
