Rails.application.routes.draw do

  get "/" => "posts#index"
  get "/posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "/posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  get "posts/:id/destroy" => "posts#destroy"


  get "users/index" => "users#index"
  get "users/new" => "users#new"
  get "users/:id" => "users#index"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  post "users/:id/update" => "users#update"
  post "users/destroy" => "users#destroy"

  get "login" => "users#login_form"
  post "user_login" => "users#login"
  get "logout" => "users#logout"


end
