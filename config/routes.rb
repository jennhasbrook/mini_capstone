Rails.application.routes.draw do
  
  namespace :api do
    get '/products' => 'products#index'
    get '/products/:id' => 'products#show'
    post '/products' => 'products#create'
    patch '/products/:id' => 'products#update'
    delete '/products/:id' => 'products#destroy'

    get '/orders/:id' => 'orders#show'
    post '/orders' => 'orders#create'

    post '/carted_products' => 'carted_products#create'
    get '/carted_products' => 'carted_products#index'
    delete '/carted_products/:id' => 'carted_products#destroy'
  end
  post "/users" => "users#create"
  post 'user_token' => 'user_token#create'


end




