Rails.application.routes.draw do
  get 'posts/index'

  get 'posts/show'

  get 'posts/new'

  get 'posts/edit'

  resources :posts

  get  'about' => 'welcome#about'

  get 'welcome/contact'

  get 'welcome/faq'

  root to: 'welcome#index'
end
