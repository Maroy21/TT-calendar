Rails.application.routes.draw do
  root 'pages#main'
  
  devise_for :users
end
