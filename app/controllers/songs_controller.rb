class SongsController < ApplicationController

  def show
    @song = Song.find(params[:id])
    lyrics_path = File.join(Rails.root, "song_data", @song.name.downcase + ".txt")
    lyrics = File.read(lyrics_path).split("\n")
    @blankified_lyrics = processed_lyrics(lyrics)
  end

  private

  def processed_lyrics(lyrics)
    lines_per_blank = 3
    counter = 1
    blankified_lyrics = []
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
            words[i] = "<input type=\"text\" data-correct-answer=\"#{words[i]}\"></input><span class=\"answer-correctness\"></span>"
            result = words.join(" ")
          end
        end
      end
      blankified_lyrics << result.gsub("SKIP", "").html_safe
    end
    blankified_lyrics
  end

end
