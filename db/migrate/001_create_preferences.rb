class CreatePreferences < ActiveRecord::Migration
    def change 
        create_table :preferences do |x|
            x.boolean :allow_create_artists
            x.boolean :allow_create_songs 

            x.timestamps null: false
        end
    end
end