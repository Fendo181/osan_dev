Rails.application.routes.draw do

root 'static_pages#home'
# users
get '/signup',  to: 'users#new'
post '/signup',  to: 'users#create'

# session
get    '/login',   to: 'sessions#new'
post   '/login',   to: 'sessions#create'
delete '/logout',  to: 'sessions#destroy'

# profile
get '/profile',  to: 'users#profile'

resources :users
end
