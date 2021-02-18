class Admin::PreferencesController < ApplicationController

  def index
    @song_count = Song.count
    @artists_count = Artist.count
    @last_song = Song.last
  end
end
