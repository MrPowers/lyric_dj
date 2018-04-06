ActiveAdmin.register Song do
  permit_params :name, :language, :youtube_id, :artist_id, :slug
end

