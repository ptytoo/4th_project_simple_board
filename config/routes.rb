Rails.application.routes.draw do
  get '/' => 'post#index'
  
  get '/user/index'
  get '/user/new'
  post '/user/create'
  get '/user/show/:id' => 'post#show'
  get '/user/login'
  post '/user/login_process'
  get '/user/logout'
  
  get '/post/new'
  post '/post/create'
  get '/post/show/:id' => 'post#show'
  get '/post/modify/:id' => 'post#modify'
  get '/post/update/:id' => 'post#update'
  get '/post/destroy/:id' => 'post#destroy'
  get '/post/create_comment'
end
