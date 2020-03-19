class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def check_artist_preferences
    Preference.first.allow_create_artists
  end

  def check_song_preferences
    Preference.first.allow_create_songs
  end

end
