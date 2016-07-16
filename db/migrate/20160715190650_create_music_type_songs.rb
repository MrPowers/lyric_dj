class CreateMusicTypeSongs < ActiveRecord::Migration
  def change
    create_table :music_type_songs do |t|
      t.integer :music_type_id
      t.integer :song_id

      t.timestamps null: false
    end
  end
end
