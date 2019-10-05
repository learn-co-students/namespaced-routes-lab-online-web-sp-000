class ChangeTableColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :preferences, :allow_create_songs, :boolean
    change_column :preferences, :song_sort_order, :string

  end
end
