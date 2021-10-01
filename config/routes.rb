Rails.application.routes.draw do
  root 'pages#main'
  get '/main/:year/:month', to: 'pages#main'
  resources :events
  devise_for :users
end
