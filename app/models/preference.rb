class Preference < ActiveRecord::Base
  
  def self.artist_sort_order
    Artist.all.sort
  end
  
  def self.song_sort_order
    Song.all.sort
  end
  
  def self.allow_create_artists
  end
  
  def self.allow_create_songs
  end
  
end
