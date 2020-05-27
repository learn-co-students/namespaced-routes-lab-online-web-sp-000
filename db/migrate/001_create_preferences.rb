class CreatePreferences < ActiveRecord::Migration
    def change 
        create_table :preferences do |x|
            x.string :artist_sort_order
            x.string :song_sort_order
            x.string :allow_create_artists
            x.string :allow_create_songs 

            x.timestamps null: false
        end
    end
end