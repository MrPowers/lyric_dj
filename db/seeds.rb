# Music Types

#english_pop = MusicType.where(
  #language: "english",
  #name: "Pop"
#).first_or_create

#spanish_pop = MusicType.where(
  #language: "spanish",
  #name: "Pop"
#).first_or_create


## Justin Bieber

#bieber = Artist.where(
  #first_name: "Justin",
  #last_name: "Bieber",
  #slug: "justin-bieber"
#).first_or_create

#sorry = Song.where(
  #name: "Sorry",
  #language: "english",
  #youtube_id: "fRh_vgS2dFE",
  #artist_id: bieber.id,
  #slug: "sorry"
#).first_or_create

#MusicTypeSong.where(
  #music_type_id: english_pop.id,
  #song_id: sorry.id
#).first_or_create

#what_do_you_mean = Song.where(
  #name: "What Do You Mean",
  #language: "english",
  #youtube_id: "DK_0jXPuIr0",
  #artist_id: bieber.id,
  #slug: "what-do-you-mean"
#).first_or_create

#MusicTypeSong.where(
  #music_type_id: english_pop.id,
  #song_id: what_do_you_mean.id
#).first_or_create


## Adele

#adele = Artist.where(
  #first_name: "Adele",
  #slug: "adele"
#).first_or_create

#hello = Song.where(
  #name: "Hello",
  #language: "english",
  #youtube_id: "YQHsXMglC9A",
  #artist_id: adele.id,
  #slug: "hello"
#).first_or_create

#MusicTypeSong.where(
  #music_type_id: english_pop.id,
  #song_id: hello.id
#).first_or_create


## Drake

#drake = Artist.where(
  #first_name: "Drake",
  #slug: "drake"
#).first_or_create

#hotline_bling = Song.where(
  #name: "Hotline Bling",
  #language: "english",
  #youtube_id: "uxpDa-c-4Mc",
  #artist_id: drake.id,
  #slug: "hotline-bling"
#).first_or_create

#MusicTypeSong.where(
  #music_type_id: english_pop.id,
  #song_id: hotline_bling.id
#).first_or_create



## Nicky Jam

#nicky_jam = Artist.where(
  #first_name: "Nicky",
  #last_name: "Jam",
  #slug: "nicky-jam"
#).first_or_create

#hasta_el_amanecer = Song.where(
  #name: "Hasta El Amanecer",
  #language: "spanish",
  #youtube_id: "kkx-7fsiWgg",
  #artist_id: nicky_jam.id,
  #slug: "hasta-el-amanecer"
#).first_or_create

#MusicTypeSong.where(
  #music_type_id: spanish_pop.id,
  #song_id: hasta_el_amanecer.id
#).first_or_create

#el_perdon = Song.where(
  #name: "El Perdón",
  #language: "spanish",
  #youtube_id: "hXI8RQYC36Q",
  #artist_id: nicky_jam.id,
  #slug: "el-perdon"
#).first_or_create

#MusicTypeSong.where(
  #music_type_id: spanish_pop.id,
  #song_id: el_perdon.id
#).first_or_create


## Leslie Grace

#leslie_grace = Artist.where(
  #first_name: "Leslie",
  #last_name: "Grace",
  #slug: "leslie-grace"
#).first_or_create

#aire = Song.where(
  #name: "Aire",
  #language: "spanish",
  #youtube_id: "Pj7rZhF6rP4",
  #artist_id: leslie_grace.id,
  #slug: "aire"
#).first_or_create

#MusicTypeSong.where(
  #music_type_id: spanish_pop.id,
  #song_id: aire.id
#).first_or_create


## J Balvin

#j_balvin = Artist.where(
  #first_name: "J",
  #last_name: "Balvin",
  #slug: "j-balvin"
#).first_or_create

#ginza = Song.where(
  #name: "Ginza",
  #language: "spanish",
  #youtube_id: "zZjSX01P5dE",
  #artist_id: j_balvin.id,
  #slug: "ginza"
#).first_or_create

#MusicTypeSong.where(
  #music_type_id: spanish_pop.id,
  #song_id: ginza.id
#).first_or_create



## Shawn Mendes

#shawn_mendes = Artist.where(
  #first_name: "Shawn",
  #last_name: "Mendes",
  #slug: "shawn-mendes"
#).first_or_create

#stitches = Song.where(
  #name: "Stitches",
  #language: "english",
  #youtube_id: "VbfpW0pbvaU",
  #artist_id: shawn_mendes.id,
  #slug: "stitches"
#).first_or_create

#MusicTypeSong.where(
  #music_type_id: english_pop.id,
  #song_id: stitches.id
#).first_or_create



## Lukas Graham

#lukas_graham = Artist.where(
  #first_name: "Lukas",
  #last_name: "Graham",
  #slug: "lukas-graham"
#).first_or_create

#seven_years = Song.where(
  #name: "7 Years",
  #language: "english",
  #youtube_id: "LHCob76kigA",
  #artist_id: lukas_graham.id,
  #slug: "7-years"
#).first_or_create

#MusicTypeSong.where(
  #music_type_id: english_pop.id,
  #song_id: seven_years.id
#).first_or_create

#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
