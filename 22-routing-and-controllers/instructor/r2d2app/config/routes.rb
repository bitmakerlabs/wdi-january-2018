Rails.application.routes.draw do
  root 'pages#home'

  get 'bitmaker' => 'pages#bitmaker'

  resources :products

end
