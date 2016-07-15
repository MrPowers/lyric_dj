class Song < ActiveRecord::Base
  belongs_to :artist
  validates :name, uniqueness: { scope: :artist_id }
  validates :name, presence: true
  validates :language, presence: true
  validates :youtube_id, presence: true
  validates :artist_id, presence: true
  validates :slug, presence: true
end
