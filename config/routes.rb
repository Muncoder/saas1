Rails.application.routes.draw do
  get '/about' => 'pages#about'

  resources :contacts

  root "pages#home"
end
