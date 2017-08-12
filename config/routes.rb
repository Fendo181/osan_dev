Rails.application.routes.draw do



  get 'sessions/new'

# users
resources :users
end
