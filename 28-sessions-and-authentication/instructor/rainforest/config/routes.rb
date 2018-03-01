Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :products, only: :index

  resource :users, only: %i(new create)

  root 'products#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
