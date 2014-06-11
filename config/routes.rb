PostitTemplate::Application.routes.draw do
  root to: 'posts#index'

  #route that displays all of our posts localhost:3000/posts
  resources :posts, except: [:destroy]
  resources :categories, only: [:new, :create, :show]

end
