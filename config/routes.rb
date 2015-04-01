Rails.application.routes.draw do
 
  root "blog_posts#index"

  resources :blog_posts, only: [:new, :create, :show] do
  end

end
