class CreatePrefernce < ActiveRecord::Migration[5.0]
  def change
    create_table :prefernces do |t|
      t.string :artist_sort_order
      t.string :song_sort_order
      t.boolean :song_sort_order
      t.boolean :allow_create_artists
    end
  end
end
