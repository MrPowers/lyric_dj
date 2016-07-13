Rails.application.routes.draw do
  # Adding a static controller, per the devise instructions. We'll need one (or something similar) for the homepage, anyway.
  root 'static#root'

  devise_for :users

  resources :songs, only: [:show]

  get 'aprender-ingles-con-canciones', to: 'blogs#about'

end
