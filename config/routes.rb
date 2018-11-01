Rails.application.routes.draw do
<<<<<<< HEAD

  resources :gossips do
 resources :comments
end

  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
  root 'static_pages#home'
=======
  get '/', to: 'static_pages#home'
  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :gossips do
    resources :comments
  end
>>>>>>> 6b28e9f3d1ae41a2f5d092f49dba7f416a17d98d
end
