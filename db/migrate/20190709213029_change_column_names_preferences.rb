class ChangeColumnNamesPreferences < ActiveRecord::Migration[5.0]
  def change
    rename_column :preferences, :create_songs, :allow_create_songs
    rename_column :preferences, :create_artists, :allow_create_artists
  end
end
