class Artist < ActiveRecord::Base
  validates :first_name, presence: true
  validates :slug, presence: true, uniqueness: true
  validates :first_name, uniqueness: { scope: :last_name }
end
