Rails.application.routes.draw do

  # User Index
  get "/users" => "users#index"

  # User Create
  post "/users" => "users#create"

  # User Update
  patch "/users/:id" => "users#update"

  # User Delete
  delete "/users/:id" => "users#destroy"

  # Tweet Index
  get "/tweets" => "tweets#index"

  # Tweet Create
  post "/tweets" => "tweets#create"

  # Tweet Update
  patch "/tweets/:id" => "tweets#update"

  # Tweet Delete
  delete "/tweets/:id" => "tweets#destroy"
end
