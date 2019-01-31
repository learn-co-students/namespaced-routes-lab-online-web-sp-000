class ReChangeAllowCreateColumns < ActiveRecord::Migration
  def change
    change_column_default :preferences, :allow_create_artists, nil
    change_column_default :preferences, :allow_create_songs, nil
  end
end
