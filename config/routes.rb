Rails.application.routes.draw do
  root 'pages#main'
  get '/main/:year/:month', to: 'pages#main'
  resources :events
  get '/events/date/:date', to: 'events#showAll'
  devise_for :users
end
