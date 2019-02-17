Rails.application.routes.draw do
  resources :debts
  resources :tables
  resources :users
  get '/debt/:id', to: 'debts#show'
  get '/my_debts', to: 'debts#my_debts'
  get '/user_debt_main_page', to: 'debts#user_debt_main_page'
  get '/debt_for_borrower', to: 'debts#debt_for_borrower'
  get '/new_user_debt', to: 'debts#new_user_debt'
  get '/exit', to: 'users#exit'
  get '/personal_area', to: 'users#personal_area'
  get '/new_debt', to: 'debts#new'
  get '/signin', to: 'users#signin'
  get '/all', to: 'debts#all'
  get '/all_users', to: 'users#all_users'
  get '/new_user', to: 'users#new_user'
  get '/index', to: 'users#index'
  get '/new_table', to: 'tables#new_table'

  post 'login', to: 'users#login'
  post 'create', to: 'users#create'
  post 'create_debt_with_logged_user', to: 'debts#create_debt_with_logged_user'
  post 'create_debt_for_borrower', to: 'debts#create_debt_for_borrower'


  root "users#main"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
