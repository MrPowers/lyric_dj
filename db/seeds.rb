# Wipe the existing models
ActiveRecord::Base.connection.execute("truncate table music_types")
ActiveRecord::Base.connection.execute("truncate table artists")
ActiveRecord::Base.connection.execute("truncate table songs")
ActiveRecord::Base.connection.execute("truncate table music_type_songs")

# Music Types

english_pop = MusicType.where(
  language: "english",
  name: "Pop"
).first_or_create

spanish_pop = MusicType.where(
  language: "spanish",
  name: "Pop"
).first_or_create

spanish_reggaeton = MusicType.where(
  language: "spanish",
  name: "Reggaeton"
).first_or_create

kondzilla = MusicType.where(
  language: "portuguese",
  name: "KondZilla"
).first_or_create


spanish_bachata = MusicType.where(
  language: "spanish",
  name: "Bachata"
).first_or_create

english_rap = MusicType.where(
  language: "english",
  name: "Rap"
).first_or_create

spanish_reggae = MusicType.where(
  language: "spanish",
  name: "Reggae"
).first_or_create

spanish_champeta = MusicType.where(
  language: "spanish",
  name: "Champeta"
).first_or_create

spanish_rap = MusicType.where(
  language: "spanish",
  name: "Rap"
).first_or_create

english_reggae = MusicType.where(
  language: "english",
  name: "Reggae"
).first_or_create

salsa = MusicType.where(
  language: "spanish",
  name: "Salsa"
).first_or_create

# Joe Arroyo

joe_arroyo = Artist.where(
  first_name: "Joe Arroyo",
  slug: "joe-arroyo"
).first_or_create

no_le = Song.where(
  name: "Ne le pegue a la negra",
  language: "spanish",
  youtube_id: "PqmLPeL8aj4",
  artist_id: joe_arroyo.id,
  slug: "no-le-pegue-a-la-negra"
).first_or_create

MusicTypeSong.where(
  music_type_id: salsa.id,
  song_id: no_le.id
).first_or_create


# Six Nine

six_nine = Artist.where(
  first_name: "6IX9INE",
  slug: "six-nine"
).first_or_create

billy = Song.where(
  name: "Billy",
  language: "english",
  youtube_id: "LJjsm6CVsG8",
  artist_id: six_nine.id,
  slug: "billy"
).first_or_create

MusicTypeSong.where(
  music_type_id: english_rap.id,
  song_id: billy.id
).first_or_create


# Lil Dicky

lil_dicky = Artist.where(
  first_name: "Lil Dicky",
  slug: "lil-dicky"
).first_or_create

freaky_friday = Song.where(
  name: "Freaky Friday",
  language: "english",
  youtube_id: "YJeTdLD9mjQ",
  artist_id: lil_dicky.id,
  slug: "freaky-friday"
).first_or_create

MusicTypeSong.where(
  music_type_id: english_rap.id,
  song_id: freaky_friday.id
).first_or_create



# Ozuna

ozuna = Artist.where(
  first_name: "Ozuna",
  slug: "ozuna"
).first_or_create

balenciaga = Song.where(
  name: "Balenciaga",
  language: "spanish",
  youtube_id: "pd7AMDMotyM",
  artist_id: ozuna.id,
  slug: "balenciaga"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_reggaeton.id,
  song_id: balenciaga.id
).first_or_create



# MC Fioti

mc_fioti = Artist.where(
  first_name: "MC Fioti",
  slug: "mc-fioti"
).first_or_create

bum_bum = Song.where(
  name: "Bum Bum Tam Tam",
  language: "portuguese",
  youtube_id: "_P7S2lKif-A",
  artist_id: mc_fioti.id,
  slug: "bum-bum-tam-tam"
).first_or_create

MusicTypeSong.where(
  music_type_id: kondzilla.id,
  song_id: bum_bum.id
).first_or_create


# MC Kevinho

mc_kevinho = Artist.where(
  first_name: "MC Kevinho",
  slug: "mc-kevinho"
).first_or_create

olha_a_explosao = Song.where(
  name: "Olha a Explosao",
  language: "portuguese",
  youtube_id: "3yd_eoMOvqk",
  artist_id: mc_kevinho.id,
  slug: "olha-a-explosao"
).first_or_create

MusicTypeSong.where(
  music_type_id: kondzilla.id,
  song_id: olha_a_explosao.id
).first_or_create



# Justin Bieber

bieber = Artist.where(
  first_name: "Justin",
  last_name: "Bieber",
  slug: "justin-bieber"
).first_or_create

sorry = Song.where(
  name: "Sorry",
  language: "english",
  youtube_id: "fRh_vgS2dFE",
  artist_id: bieber.id,
  slug: "sorry"
).first_or_create

MusicTypeSong.where(
  music_type_id: english_pop.id,
  song_id: sorry.id
).first_or_create

what_do_you_mean = Song.where(
  name: "What Do You Mean",
  language: "english",
  youtube_id: "DK_0jXPuIr0",
  artist_id: bieber.id,
  slug: "what-do-you-mean"
).first_or_create

MusicTypeSong.where(
  music_type_id: english_pop.id,
  song_id: what_do_you_mean.id
).first_or_create


# Adele

adele = Artist.where(
  first_name: "Adele",
  slug: "adele"
).first_or_create

hello = Song.where(
  name: "Hello",
  language: "english",
  youtube_id: "YQHsXMglC9A",
  artist_id: adele.id,
  slug: "hello"
).first_or_create

MusicTypeSong.where(
  music_type_id: english_pop.id,
  song_id: hello.id
).first_or_create

someone_like_you = Song.where(
  name: "Someone Like You",
  language: "english",
  youtube_id: "hLQl3WQQoQ0",
  artist_id: adele.id,
  slug: "someone-like-you"
).first_or_create

MusicTypeSong.where(
  music_type_id: english_pop.id,
  song_id: someone_like_you.id
).first_or_create


# Gotye

gotye = Artist.where(
  first_name: "Gotye",
  slug: "gotye"
).first_or_create

somebody_that_i_used_to_know = Song.where(
  name: "Somebody that I used to know",
  language: "english",
  youtube_id: "8UVNT4wvIGY",
  artist_id: gotye.id,
  slug: "somebody-that-i-used-to-know"
).first_or_create

MusicTypeSong.where(
  music_type_id: english_pop.id,
  song_id: somebody_that_i_used_to_know.id
).first_or_create


# Owl City

owl_city = Artist.where(
  first_name: "Owl City",
  slug: "owl-city"
).first_or_create

fireflies = Song.where(
  name: "Fireflies",
  language: "english",
  youtube_id: "psuRGfAaju4",
  artist_id: owl_city.id,
  slug: "fireflies"
).first_or_create

MusicTypeSong.where(
  music_type_id: english_pop.id,
  song_id: fireflies.id
).first_or_create


# Echosmith

echosmith = Artist.where(
  first_name: "Echosmith",
  slug: "echosmith"
).first_or_create

bright = Song.where(
  name: "Bright",
  language: "english",
  youtube_id: "kMAzstG5O7E",
  artist_id: echosmith.id,
  slug: "bright"
).first_or_create

MusicTypeSong.where(
  music_type_id: english_pop.id,
  song_id: bright.id
).first_or_create


# Rihanna

rihanna = Artist.where(
  first_name: "Rihanna",
  slug: "rihanna"
).first_or_create

diamonds = Song.where(
  name: "Diamonds",
  language: "english",
  youtube_id: "lWA2pjMjpBs",
  artist_id: rihanna.id,
  slug: "diamonds"
).first_or_create

MusicTypeSong.where(
  music_type_id: english_pop.id,
  song_id: diamonds.id
).first_or_create


# Bruno Mars

bruno_mars = Artist.where(
  first_name: "Bruno Mars",
  slug: "bruno-mars"
).first_or_create

uptown_funk = Song.where(
  name: "Uptown Funk",
  language: "english",
  youtube_id: "OPf0YbXqDm0",
  artist_id: bruno_mars.id,
  slug: "uptown-funk"
).first_or_create

MusicTypeSong.where(
  music_type_id: english_pop.id,
  song_id: uptown_funk.id
).first_or_create


# Katy Perry

katy_perry = Artist.where(
  first_name: "Katy Perry",
  slug: "katy-perry"
).first_or_create

roar = Song.where(
  name: "Roar",
  language: "english",
  youtube_id: "CevxZvSJLk8",
  artist_id: katy_perry.id,
  slug: "roar"
).first_or_create

MusicTypeSong.where(
  music_type_id: english_pop.id,
  song_id: roar.id
).first_or_create



# Taylor Swift

taylor_swift = Artist.where(
  first_name: "Taylor Swift",
  slug: "taylor-swift"
).first_or_create

shake_it_off = Song.where(
  name: "Shake it off",
  language: "english",
  youtube_id: "nfWlot6h_JM",
  artist_id: taylor_swift.id,
  slug: "shake-it-off"
).first_or_create

MusicTypeSong.where(
  music_type_id: english_pop.id,
  song_id: shake_it_off.id
).first_or_create


# Notorious Big

notorious_big = Artist.where(
  first_name: "Notorious B.I.G.",
  slug: "notorious-big"
).first_or_create

juicy = Song.where(
  name: "Juicy",
  language: "english",
  youtube_id: "_JZom_gVfuw",
  artist_id: notorious_big.id,
  slug: "juicy"
).first_or_create

MusicTypeSong.where(
  music_type_id: english_rap.id,
  song_id: juicy.id
).first_or_create



# Machine Gun Kelly

mgk = Artist.where(
  first_name: "MGK",
  slug: "mgk"
).first_or_create

wild_boy = Song.where(
  name: "Wild Boy",
  language: "english",
  youtube_id: "A_J7kEhY9sM",
  artist_id: mgk.id,
  slug: "wild-boy"
).first_or_create

MusicTypeSong.where(
  music_type_id: english_rap.id,
  song_id: wild_boy.id
).first_or_create



# Wiz Khalifa

wiz_khalifa = Artist.where(
  first_name: "Wiz Khalifa",
  slug: "wiz-khalifa"
).first_or_create

we_dem_boyz = Song.where(
  name: "We dem boyz",
  language: "english",
  youtube_id: "UX6K7waag5Q",
  artist_id: wiz_khalifa.id,
  slug: "we-dem-boyz"
).first_or_create

MusicTypeSong.where(
  music_type_id: english_rap.id,
  song_id: we_dem_boyz.id
).first_or_create


# Kendrick Lamar

kendrick_lamar = Artist.where(
  first_name: "Kendrick Lamar",
  slug: "kendrick-lamar"
).first_or_create

king_kunta = Song.where(
  name: "King Kunta",
  language: "english",
  youtube_id: "hRK7PVJFbS8",
  artist_id: kendrick_lamar.id,
  slug: "king-kunta"
).first_or_create

MusicTypeSong.where(
  music_type_id: english_rap.id,
  song_id: king_kunta.id
).first_or_create



# Fetty Wap

fetty_wap = Artist.where(
  first_name: "Fetty Wap",
  slug: "fetty-wap"
).first_or_create

trap_queen = Song.where(
  name: "Trap Queen",
  language: "english",
  youtube_id: "i_kF4zLNKio",
  artist_id: fetty_wap.id,
  slug: "trap-queen"
).first_or_create

MusicTypeSong.where(
  music_type_id: english_rap.id,
  song_id: trap_queen.id
).first_or_create


# Cultura Profetica

cultura_profetica = Artist.where(
  first_name: "Cultura Profetica",
  slug: "cultura-profetica"
).first_or_create

la_complicidad = Song.where(
  name: "La Complicidad",
  language: "spanish",
  youtube_id: "Fjg3n5nt550",
  artist_id: cultura_profetica.id,
  slug: "la-complicidad"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_reggae.id,
  song_id: la_complicidad.id
).first_or_create

baja_la_tension = Song.where(
  name: "Baja la Tension",
  language: "spanish",
  youtube_id: "Fjg3n5nt550",
  artist_id: cultura_profetica.id,
  slug: "baja-la-tension"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_reggae.id,
  song_id: baja_la_tension.id
).first_or_create

rimas_para_seducir = Song.where(
  name: "Ritmas pa seducir",
  language: "spanish",
  youtube_id: "Rj_-uT7M5uo",
  artist_id: cultura_profetica.id,
  slug: "rimas-para-seducir"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_reggae.id,
  song_id: rimas_para_seducir.id
).first_or_create


# Los Pericos

los_pericos = Artist.where(
  first_name: "Los Pericos",
  slug: "los-pericos"
).first_or_create

runaway = Song.where(
  name: "Runaway",
  language: "spanish",
  youtube_id: "cUCls4kHAng",
  artist_id: los_pericos.id,
  slug: "runaway"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_reggae.id,
  song_id: runaway.id
).first_or_create



# Shaggy

shaggy = Artist.where(
  first_name: "Shaggy",
  slug: "shaggy"
).first_or_create

repent = Song.where(
  name: "Repent",
  language: "english",
  youtube_id: "iJiyYdHTJE0",
  artist_id: shaggy.id,
  slug: "repent"
).first_or_create

MusicTypeSong.where(
  music_type_id: english_reggae.id,
  song_id: repent.id
).first_or_create



# Twister el Rey

twister_el_rey = Artist.where(
  first_name: "Twister el Rey",
  slug: "twister-el-rey"
).first_or_create

la_espeluca = Song.where(
  name: "La Espeluca",
  language: "english",
  youtube_id: "DtEXcC5Z9wE",
  artist_id: twister_el_rey.id,
  slug: "la-espeluca"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_champeta.id,
  song_id: la_espeluca.id
).first_or_create



# Kevin Florez

kevin_florez = Artist.where(
  first_name: "Kevin Florez",
  slug: "kevin-florez"
).first_or_create

la_invite_a_bailar = Song.where(
  name: "La invinte a bailar",
  language: "spanish",
  youtube_id: "xZF8PSFUZ8g",
  artist_id: kevin_florez.id,
  slug: "la-invite-a-bailar"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_champeta.id,
  song_id: la_invite_a_bailar.id
).first_or_create



# C-Kan

c_kan = Artist.where(
  first_name: "C-Kan",
  slug: "c-kan"
).first_or_create

un_par_de_balas = Song.where(
  name: "Un Par De Balas",
  language: "spanish",
  youtube_id: "A6iJsZoRO64",
  artist_id: c_kan.id,
  slug: "un-par-de-balas"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_rap.id,
  song_id: un_par_de_balas.id
).first_or_create



# Catel de santa

cartel_de_santa = Artist.where(
  first_name: "Cartel de Santa",
  slug: "cartel-de-santa"
).first_or_create

el_raton = Song.where(
  name: "El raton y el queso",
  language: "spanish",
  youtube_id: "M5wr0Yvs9cg",
  artist_id: cartel_de_santa.id,
  slug: "el-raton-y-el-queso"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_rap.id,
  song_id: el_raton.id
).first_or_create





# Drake

drake = Artist.where(
  first_name: "Drake",
  slug: "drake"
).first_or_create

hotline_bling = Song.where(
  name: "Hotline Bling",
  language: "english",
  youtube_id: "uxpDa-c-4Mc",
  artist_id: drake.id,
  slug: "hotline-bling"
).first_or_create

MusicTypeSong.where(
  music_type_id: english_pop.id,
  song_id: hotline_bling.id
).first_or_create



# Nicky Jam

nicky_jam = Artist.where(
  first_name: "Nicky",
  last_name: "Jam",
  slug: "nicky-jam"
).first_or_create

hasta_el_amanecer = Song.where(
  name: "Hasta El Amanecer",
  language: "spanish",
  youtube_id: "kkx-7fsiWgg",
  artist_id: nicky_jam.id,
  slug: "hasta-el-amanecer"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_reggaeton.id,
  song_id: hasta_el_amanecer.id
).first_or_create

el_perdon = Song.where(
  name: "El Perdón",
  language: "spanish",
  youtube_id: "hXI8RQYC36Q",
  artist_id: nicky_jam.id,
  slug: "el-perdon"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_reggaeton.id,
  song_id: el_perdon.id
).first_or_create

travesuras = Song.where(
  name: "Travesuras",
  language: "spanish",
  youtube_id: "OxxggwHFj7M",
  artist_id: nicky_jam.id,
  slug: "travesuras"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_reggaeton.id,
  song_id: travesuras.id
).first_or_create

voy_a_beber = Song.where(
  name: "Voy a Beber",
  language: "spanish",
  youtube_id: "7T_09ueky2o",
  artist_id: nicky_jam.id,
  slug: "voy-a-beber"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_reggaeton.id,
  song_id: voy_a_beber.id
).first_or_create


# Maluma

maluma = Artist.where(
  first_name: "Maluma",
  slug: "maluma"
).first_or_create

borro_cassette = Song.where(
  name: "Borro Cassette",
  language: "spanish",
  youtube_id: "Xk0wdDTTPA0",
  artist_id: maluma.id,
  slug: "borro-cassette"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_reggaeton.id,
  song_id: borro_cassette.id
).first_or_create


# Farruko

farruko = Artist.where(
  first_name: "Farruko",
  slug: "farruko"
).first_or_create

sunset = Song.where(
  name: "Sunset",
  language: "spanish",
  youtube_id: "ZBMsSPR9QMg",
  artist_id: farruko.id,
  slug: "sunset"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_reggaeton.id,
  song_id: sunset.id
).first_or_create



# Leslie Grace

leslie_grace = Artist.where(
  first_name: "Leslie",
  last_name: "Grace",
  slug: "leslie-grace"
).first_or_create

aire = Song.where(
  name: "Aire",
  language: "spanish",
  youtube_id: "Pj7rZhF6rP4",
  artist_id: leslie_grace.id,
  slug: "aire"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_pop.id,
  song_id: aire.id
).first_or_create


# J Balvin

j_balvin = Artist.where(
  first_name: "J",
  last_name: "Balvin",
  slug: "j-balvin"
).first_or_create

ginza = Song.where(
  name: "Ginza",
  language: "spanish",
  youtube_id: "zZjSX01P5dE",
  artist_id: j_balvin.id,
  slug: "ginza"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_reggaeton.id,
  song_id: ginza.id
).first_or_create

six_am = Song.where(
  name: "6 AM",
  language: "spanish",
  youtube_id: "yUV9JwiQLog",
  artist_id: j_balvin.id,
  slug: "6am"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_reggaeton.id,
  song_id: six_am.id
).first_or_create

bobo = Song.where(
  name: "Bobo",
  language: "spanish",
  youtube_id: "0GvLP2C2w9U",
  artist_id: j_balvin.id,
  slug: "bobo"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_reggaeton.id,
  song_id: bobo.id
).first_or_create

ay_vamos = Song.where(
  name: "Ay Vamos",
  language: "spanish",
  youtube_id: "TapXs54Ah3E",
  artist_id: j_balvin.id,
  slug: "ay-vamos"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_reggaeton.id,
  song_id: ay_vamos.id
).first_or_create






# Shawn Mendes

shawn_mendes = Artist.where(
  first_name: "Shawn",
  last_name: "Mendes",
  slug: "shawn-mendes"
).first_or_create

stitches = Song.where(
  name: "Stitches",
  language: "english",
  youtube_id: "VbfpW0pbvaU",
  artist_id: shawn_mendes.id,
  slug: "stitches"
).first_or_create

MusicTypeSong.where(
  music_type_id: english_pop.id,
  song_id: stitches.id
).first_or_create



# Lukas Graham

lukas_graham = Artist.where(
  first_name: "Lukas",
  last_name: "Graham",
  slug: "lukas-graham"
).first_or_create

seven_years = Song.where(
  name: "7 Years",
  language: "english",
  youtube_id: "LHCob76kigA",
  artist_id: lukas_graham.id,
  slug: "7-years"
).first_or_create

MusicTypeSong.where(
  music_type_id: english_pop.id,
  song_id: seven_years.id
).first_or_create


# Romeo Santos

romeo_santos = Artist.where(
  first_name: "Romeo",
  last_name: "Santos",
  slug: "romeo-santos"
).first_or_create

propuesta_indecente = Song.where(
  name: "Propuesta indecente",
  language: "spanish",
  youtube_id: "QFs3PIZb3js",
  artist_id: romeo_santos.id,
  slug: "propuesta-indecente"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_bachata.id,
  song_id: propuesta_indecente.id
).first_or_create

cancioncitas_de_amor = Song.where(
  name: "Cancioncitas de amor",
  language: "spanish",
  youtube_id: "jk4HYngf65w",
  artist_id: romeo_santos.id,
  slug: "cancioncitas-de-amor"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_bachata.id,
  song_id: cancioncitas_de_amor.id
).first_or_create

eres_mia = Song.where(
  name: "Eres mia",
  language: "spanish",
  youtube_id: "8iPcqtHoR3U",
  artist_id: romeo_santos.id,
  slug: "eres-mia"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_bachata.id,
  song_id: eres_mia.id
).first_or_create

promise = Song.where(
  name: "Promise",
  language: "spanish",
  youtube_id: "Y3XyWhrZnqE",
  artist_id: romeo_santos.id,
  slug: "promise"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_bachata.id,
  song_id: promise.id
).first_or_create



# Prince Royce

prince_royce = Artist.where(
  first_name: "Prince",
  last_name: "Royce",
  slug: "prince-royce"
).first_or_create

darte_un_beso = Song.where(
  name: "Darte un beso",
  language: "spanish",
  youtube_id: "bdOXnTbyk0g",
  artist_id: prince_royce.id,
  slug: "darte-un-beso"
).first_or_create

MusicTypeSong.where(
  music_type_id: spanish_bachata.id,
  song_id: darte_un_beso.id
).first_or_create


#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
