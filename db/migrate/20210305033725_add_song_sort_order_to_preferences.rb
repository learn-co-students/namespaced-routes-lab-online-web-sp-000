class AddSongSortOrderToPreferences < ActiveRecord::Migration[5.0]
  def change
    add_column :preferences, :song_sort_order, :string
  end
end