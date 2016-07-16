class Song < ActiveRecord::Base
  belongs_to :artist
  validates :name, uniqueness: { scope: :artist_id }
  validates :name, presence: true
  validates :language, presence: true
  validates :youtube_id, presence: true
  validates :artist_id, presence: true
  validates :slug, presence: true

  has_many :music_type_songs
  has_many :music_types, :through => :music_type_songs
end
