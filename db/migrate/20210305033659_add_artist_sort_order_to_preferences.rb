class AddArtistSortOrderToPreferences < ActiveRecord::Migration[5.0]
  def change
    add_column :preferences, :artist_sort_order, :string
  end
end