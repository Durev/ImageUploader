Rails.application.routes.draw do
  root 'images#upload'
  get '/display', to: 'images#display'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
