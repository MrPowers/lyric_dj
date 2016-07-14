require 'json'

desc "populate old data"
task :populate_old_data => :environment do
  songs = JSON.parse(File.read('db/songs.json'))

  songs.each do |song|
    artist = song["artist"].split("-")
    first_name = artist[0]
    last_name = artist[1]
    # But I'm actually thinking we should just make the artist be one field. No first/last names, like this:
    # artist = song.artist.gsub("-", " ")
    new_artist = Artist.create!(
      first_name: first_name,
      last_name: last_name,
      slug: "#{first_name}-#{last_name}"
    )
    Song.create!(
      name: song["name"],
      # I know this is an N+1 query and bad, but we're only doing it one time (when we seed).
      artist_id: new_artist.id,
      language: song["language"],
      youtube_id: song["youtube_id"],
      slug: song["name"]
    )
  end
end
