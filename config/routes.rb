Rails.application.routes.draw do
  get 'posts/new'
  post '/posts' => 'posts#create'
  get '/posts' => 'posts#index'
end
