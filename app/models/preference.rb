class Preference < ActiveRecord::Base
    def self.allow_create_artists
        @preference = !@preference
        #Swap it to the opposite
    end 

    def self.allow_create_songs
        @preference = !@preference
        #Swap it to the opposite
    end 
end 