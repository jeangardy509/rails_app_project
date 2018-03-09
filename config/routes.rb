# frozen_string_literal: true

Rails.application.routes.draw do
  resources :budgets
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  post '/budgets' => 'budgets#create'
  get '/budgets' => 'budgets#index'
  get '/budgets/:id' => 'budgets#show'
  patch '/budgets/:id' => 'budgets#update'
end
