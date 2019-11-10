class CreatePreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :preferences do |t|
      t.boolean :allow_new_songs
      t.boolean :allow_new_artists
      t.timestamps
    end
  end
end
