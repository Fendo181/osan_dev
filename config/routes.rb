Rails.application.routes.draw do

# static_pages
root 'static_pages#home'
get '/welcome', to: 'static_pages#welcome'

# users
get '/signup',  to: 'users#new'
post '/signup', to: 'users#create'

# session
get    '/login',   to: 'sessions#new'
post   '/login',   to: 'sessions#create'
delete '/logout',  to: 'sessions#destroy'

# communities
get '/communities', to: 'communities#index'

resources :communities do
  get 'events', on: :member, to: 'events#new'
  post 'events', on: :member, to: 'events#create'
end

# eventsのidを取得する。

resources :events, except: [:new, :create]
resources :profiles
resources :users
end
