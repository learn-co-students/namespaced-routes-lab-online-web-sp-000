class AddPreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :preferences do |t|
      t.boolean :allow_create_artists, default: false
      t.boolean :allow_create_songs,  default: true
    end
  end

end 