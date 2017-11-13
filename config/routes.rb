Rails.application.routes.draw do
  get '/' => 'post#index'
  
  get '/user/index'
  get '/user/new'
  get '/user/create'
  get '/user/show/:id' => 'post#show'
  get '/user/login'
  get '/user/login_process'
  get '/user/logout'
  
  get '/post/new'
  get '/post/create'
  get '/post/show/:id' => 'post#show'
  get '/post/modify/:id' => 'post#modify'
  get '/post/update/:id' => 'post#update'
  get '/post/destroy/:id' => 'post#destroy'
  get '/post/create_comment'
end
