Rails.application.routes.draw do
  
root 'static_pages#home'
# users
get '/signup',  to: 'users#new'
resources :users
# session
get    '/login',   to: 'sessions#new'
# post   '/login',   to: 'sessions#create'
delete '/logout',  to: 'sessions#destroy'

end
