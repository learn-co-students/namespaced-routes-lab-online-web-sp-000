class CreatePreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :preferences do |t|
      t.string :song_sort_order
      t.string :artist_sort_order
      t.boolean :create_songs
      t.boolean :create_artists

      t.timestamps
    end
  end
end
