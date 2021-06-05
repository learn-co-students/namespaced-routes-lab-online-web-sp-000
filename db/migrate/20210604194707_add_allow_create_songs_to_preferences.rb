class AddAllowCreateSongsToPreferences < ActiveRecord::Migration[6.1]
  def change
    add_column :preferences, :allow_create_songs, :boolean
  end
end
