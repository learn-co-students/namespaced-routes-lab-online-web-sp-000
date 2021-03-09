class Preference < ActiveRecord::Base
    attr_accessor :allow_create_artists, :allow_create_songs
end
  