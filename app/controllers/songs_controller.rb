class SongsController < ApplicationController

  def show
    @song = Song.find(params[:id])
    lyrics_path = File.join(Rails.root, "song_data", @song.name.downcase + ".txt")
    lyrics = File.read(lyrics_path).split("\n")
    lines_per_blank = 3
    counter = 1
    @blankified_lyrics = []
    lyrics.each do |lyric|
      if lyric.start_with?("SKIP ")
        result = lyric
      else
        words = lyric.split(" ")
        if words.empty?
          result = lyric
        else
          if counter != lines_per_blank
            counter += 1
            result = lyric
          else
            counter = 1
            indices = words.each_index.select{|i| !words[i].start_with?("SKIP")}
            i = indices.sample
            words[i] = "<input type=\"text\" data-correct-answer=\"#{words[i]}\"></input>"
            result = words.join(" ")
          end
        end
      end
      @blankified_lyrics << result.gsub("SKIP", "").html_safe
    end
  end

end
