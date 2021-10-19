# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#main'
  get '/main/:year/:month', to: 'pages#main'
  resources :events
  get '/events/date/:date', to: 'events#showAll'
  get '/events/new/:date', to: 'events#new'
  devise_for :users
end
