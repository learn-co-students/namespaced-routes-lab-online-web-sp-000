class Preference < ActiveRecord::Base
   def self.active?
     all.first.allow_create_artists || all.first.allow_create_songs
   end
  end