class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :language
      t.string :youtube_id
      t.integer :artist_id

      t.timestamps null: false
    end
  end
end
