# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

bieber = Artist.first_or_create(first_name: "Justin", last_name: "Bieber")
song = Song.first_or_create(name: "Sorry", language: "english", youtube_id: "fRh_vgS2dFE", artist_id: bieber.id)
