Rails.application.routes.draw do
  get 'sessions/new'

  root 'application#hello'
  get '/login' => 'sessions#new', as: 'login'
  post '/sessions' => 'sessions#create', as: 'sessions'
  post '/logout' => 'sessions#destroy', as: 'logout'

end
