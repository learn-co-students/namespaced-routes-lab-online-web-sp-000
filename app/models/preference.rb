class Preference < ApplicationRecord

  def self.get_or_create
    self.first ? self.first : self.create
  end
  
  def self.can_create_song?
    self.get_or_create.allow_create_songs
  end

  def self.can_create_artist?
    self.get_or_create.allow_create_artists
  end
end
