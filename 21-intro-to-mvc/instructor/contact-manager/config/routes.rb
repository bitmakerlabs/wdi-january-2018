Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # list requests you respond to and the controllers and methods that process them
  # Usually when listing all resources, we use index
  get "/contacts" => 'contacts#index'
  # Usually when displaying 1 individual resource, we use show
  get "/contacts/:id" => 'contacts#show'
end
