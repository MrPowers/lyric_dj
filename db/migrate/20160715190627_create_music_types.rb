class CreateMusicTypes < ActiveRecord::Migration
  def change
    create_table :music_types do |t|
      t.string :language
      t.string :name

      t.timestamps null: false
    end
  end
end
