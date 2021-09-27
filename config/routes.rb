Rails.application.routes.draw do
  root 'home#index'

  get '/about', to: 'home#about'
  get '/post', to: 'home#post'
  get '/contact', to: 'home#contact'

  post '/create', to: 'home#create'
  get '/new', to: 'home#new'

  get '/show/:id', to: 'home#show'
end
