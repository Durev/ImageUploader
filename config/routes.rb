Rails.application.routes.draw do
  root 'images#upload'
  get '/random', to: 'images#random'
  resources :images

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
