Rails.application.routes.draw do

  resources :topics do
    resources :sponsoredposts, :posts, except: [:index]
  end
  
  get  'about' => 'welcome#about'



  root to: 'welcome#index'
end
