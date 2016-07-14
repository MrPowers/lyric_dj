bieber = Artist.where(
  first_name: "Justin",
  last_name: "Bieber",
  slug: "justin-bieber"
).first_or_create

Song.where(
  name: "Sorry",
  language: "english",
  youtube_id: "fRh_vgS2dFE",
  artist_id: bieber.id,
  slug: "sorry"
).first_or_create
