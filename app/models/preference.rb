class Preference < ActiveRecord::Base

  def self.no_access_artists
    self.create(allow_create_artists: false)
  end

  def self.no_access_songs
      self.create(allow_create_songs: false)
  end

end