class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |p|
      p.string :artist_sort_order, default: "DESC"
      p.string :song_sort_order, default: "ASC"
      p.boolean :allow_create_artists, default: false
      p.boolean :allow_create_songs, default: true

      p.timestamps null: false
    end
  end
end
