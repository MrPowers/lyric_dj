class SongsController < ApplicationController

  def show
    @artist = Artist.where(slug: params[:artist_slug]).first
    @song = Song.where(slug: params[:song_slug], artist_id: @artist.id).first
    lyrics_path = File.join(Rails.root, "song_data", @song.name.downcase + ".txt")
    lyrics = File.read(lyrics_path).split("\n")
    @song_path = File.join("/", "songs", @song.name.downcase + ".mp3")
    @difficulty = params[:difficulty] || "normal"
    @blankified_lyrics = blankified_lyrics(lyrics, lines_per_blank(@difficulty))
  end

  private

  def blankified_lyrics(lyrics, lines_per_blank)
    counter = (1..lines_per_blank).to_a.sample
    cumulative_result = []
    lyrics.each do |lyric|
      # Skip entire lines that begin with "SKIP "
      if lyric.start_with?("SKIP ")
        result = lyric
      else
        words = lyric.split(" ")
        # Skip lines that are empty
        if words.empty?
          result = lyric
        else
          # Skip lines when the counter isn't high enough
          if counter != lines_per_blank
            counter += 1
            result = lyric
          # When the counter is high enough, add an input box to the line
          else
            counter = 1
            indices = words.each_index.select{|i| !words[i].start_with?("SKIP")}
            i = indices.sample
            answer = words[i].gsub(/[?.,\/#!$%\^&\*;:{}=\_`~()]/,"")
            words[i] = "<input type=\"text\" data-correct-answer=\"#{answer}\" size=\"#{answer.length + 1}\" style=\"text-align:center\"></input><span class=\"answer-correctness\"></span>"
            result = words.join(" ")
          end
        end
      end
      cumulative_result << result.gsub("SKIP", "").html_safe
    end
    cumulative_result
  end

  def lines_per_blank(difficulty)
    mapping = {
      "easy" => 4,
      "normal" => 3,
      "hard" => 2,
      "insane" => 1
    }
    mapping.fetch(difficulty, 3)
  end

end
