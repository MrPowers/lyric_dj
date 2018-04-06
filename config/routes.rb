Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Adding a static controller, per the devise instructions. We'll need one (or something similar) for the homepage, anyway.
  root 'music_types#index'

  devise_for :users

  get '/:artist_slug/:song_slug', to: 'songs#show', as: 'artist_song'

  get 'aprender-ingles-con-canciones', to: 'static#aprender_ingles_con_canciones'

end
