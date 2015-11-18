Rails.application.routes.draw do

  get 'labels/show'

  resources :topics do
    resources :posts, except: [:index]
  end

  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
  end

  resources :labels, only: [:show]

  get  'about' => 'welcome#about'
  root to: 'welcome#index'

  resources :users, only: [:new, :create]
   resources :sessions, only: [:new, :create, :destroy]
end
