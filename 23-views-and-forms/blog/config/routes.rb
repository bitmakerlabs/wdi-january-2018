Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/blogs' => 'blogs#index'
  # get '/blogs/new' => 'blogs#new'
  # post '/blogs' => 'blogs#create'

  resources :blogs
end
