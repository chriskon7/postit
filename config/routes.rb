PostitTemplate::Application.routes.draw do
  root to: 'posts#index'

  #route that displays all of our posts localhost:3000/posts
  resources :posts, except: [:destroy] do
    resources :comments, only: [:create]
  end
  resources :categories, only: [:new, :create, :show]

  #routes for a practice run- dog
  # get '/dogs', to: 'dogs#index'
  # get '/dogs/new', to: 'dogs#new', as: 'new_dog'
  # get '/dogs/:id', to: 'dogs#show'
  # post '/dogs', to: 'dogs#create'
  # get 'dogs/:id/edit', to: 'dogs#edit'
  # patch 'dogs/:id', to: 'dogs#update'
  # delete 'dogs/:id', to: 'dogs#destroy'
  resources :dogs, except: [:destroy]


end
