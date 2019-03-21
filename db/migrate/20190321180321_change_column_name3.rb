class ChangeColumnName3 < ActiveRecord::Migration[5.0]
  def change
    rename_column :preferences, :alow_create_artist, :allow_create_artists
  end
end
