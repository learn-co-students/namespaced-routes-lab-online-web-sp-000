class Preference < ActiveRecord::Base 
    def self.instance 
        first_or_create(allow_create_songs: true, allow_create_artists: true)
    end 

end 