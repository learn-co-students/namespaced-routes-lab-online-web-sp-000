class RenameAllowNewArtist < ActiveRecord::Migration
  def change
  	rename_column :preferences, :allow_new_artist, :allow_create_artist
  end
end
