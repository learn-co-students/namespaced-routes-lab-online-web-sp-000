class AddAllowCreateSongsToPreferences < ActiveRecord::Migration[5.0]
  def change
    add_column :preferences, :allow_create_songs, :booleans
  end
end
