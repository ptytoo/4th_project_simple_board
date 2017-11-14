Rails.application.routes.draw do
  resources :blogs
  resources :tweets
  get '/' => 'post#index'
  
  get '/user/index'
  get '/user/new'
  post '/user/create'
  get '/user/show/:id' => 'post#show'
  get '/user/login'
  post '/user/login_process'
  get '/user/logout'
  
  get '/user/note'
  
  get '/post/new'
  post '/post/create'
  get '/post/show/:id' => 'post#show'
  get '/post/modify/:id' => 'post#modify'
  get '/post/update/:id' => 'post#update'
  get '/post/destroy/:id' => 'post#destroy'
  post '/post/create_comment/:post_id' => 'post#create_comment'
end
