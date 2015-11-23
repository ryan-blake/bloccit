Rails.application.routes.draw do

  get 'labels/show'

  resources :topics do
    resources :posts, except: [:index]
  end

  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
    resources :favorites, only: [:create, :destroy]

    post '/up-vote' => 'votes#up_vote', as: :up_vote
    post '/down-vote' => 'votes#down_vote', as: :down_vote
  end

  resources :labels, only: [:show]

  get  'about' => 'welcome#about'
  root to: 'welcome#index'

  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]

end
