Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :products
  resources :webhooks

  post '/save_product', to: 'webhooks#save_product'


end
