class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :preferences, :allow_create_song, :allow_create_songs
  end
end
