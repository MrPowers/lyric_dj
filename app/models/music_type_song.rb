class MusicTypeSong < ActiveRecord::Base
  belongs_to :music_type
  belongs_to :song
end
