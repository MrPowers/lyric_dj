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

# NOTE: For when we want to tx over all the songs from the current lyricDJ.
require 'json'

# Convert json to Ruby hash
songs = JSON.parse(File.read('db/songs.json'))

songs.each do |song|
  artist = song.artist.split("-")
  first_name = artist[0]
  last_name = artist[1]
  # But I'm actually thinking we should just make the artist be one field. No first/last names, like this:
  # artist = song.artist.gsub("-", " ")
  new_artist = Artist.create!(
    first_name: first_name,
    last_name: last_name
  )
  Song.create!(
    name: song.name,
    # I know this is an N+1 query and bad, but we're only doing it one time (when we seed).
    artist_id: new_artist.id,
    language: song.language,
    youtube_id: song.youtube_id
  )
end
