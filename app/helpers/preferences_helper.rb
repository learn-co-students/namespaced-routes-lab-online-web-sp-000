module PreferencesHelper
    def artist_preference_toggle(artist)
        artist.allow_create_artist == false
    end 
    
    def song_preference_toggle(artist)
        artist.allow_create_songs == false
    end 
            
end