Rails.application.routes.draw do
  root 'pages#main'
  get '/:year/:month', to: 'pages#show'
  
  devise_for :users
end
