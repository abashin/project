Rails.application.routes.draw do
  resources :debts
  resources :users
  get '/signin', to: 'users#signin'
  get '/all', to: 'debts#all'
  get '/all_users', to: 'users#all_users'
  get '/new_user', to: 'users#new_user'
  get '/index', to: 'users#index'
  post '/login', to: 'users#login'


  root "users#main"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
