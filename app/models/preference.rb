class Preference < ActiveRecord::Base
    def self.allowed_songs?
        first.allow_create_songs
    end

    def self.allowed_artists?
        first.allow_create_artists
    end
end