Rails.application.routes.draw do
  devise_for :users
  resources :songs, only: [:show]

  # Adding a static controller, per the devise instructions. We'll need one (or something similar) for the homepage, anyway.
  root 'static#root'

end
