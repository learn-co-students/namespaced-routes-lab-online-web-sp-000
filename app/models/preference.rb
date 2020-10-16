class Preference < ApplicationRecord
    def new 
        @preference = Preference.new(allow_create_artists: false, allow_create_songs: true)
    end
end
