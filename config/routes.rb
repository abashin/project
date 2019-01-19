Rails.application.routes.draw do
  resources :debts
  resources :users
  get '/signin', to: 'users#signin'
  post '/login', to: 'users#login'


  root "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
