Rails.application.routes.draw do
 
  root "blog_posts#index"

  resources :blog_posts, only: [:new, :create, :show]
  
  resources :blog_posts, only: [:show] do
    resources :comments, only: [:create]
  end

end
