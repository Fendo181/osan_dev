Rails.application.routes.draw do

root 'static_pages#home'
get '/welcome', to: 'static_pages#welcome'
# users
get '/signup',  to: 'users#new'
post '/signup',  to: 'users#create'

# session
get    '/login',   to: 'sessions#new'
post   '/login',   to: 'sessions#create'
delete '/logout',  to: 'sessions#destroy'

# profile
# get '/profile',  to: 'users#profile'
get 'profiles/show'
get 'profiles/edit'
get 'profiles/update'
get 'profiles/delete'

# communities
get '/communities', to: 'communities#index'
get 'communities/new'
get 'communities/show'
get 'communities/edit'
get 'communities/updtae'
get 'communities/delete'


resources :users
end
