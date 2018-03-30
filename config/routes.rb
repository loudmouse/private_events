Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  get 'users/create'

  get 'users/show'

 root 'welcome#index'

 get    '/login',   to: 'sessions#new'
 post   '/login',   to: 'sessions#create'
 delete '/logout',  to: 'sessions#destroy'

 resources :users
end
