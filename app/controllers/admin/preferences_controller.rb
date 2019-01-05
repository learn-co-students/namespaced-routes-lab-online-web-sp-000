class Admin::PreferencesController < ApplicationController
  def index
    @preferences = Preference.first_or_create(artist_sort_order: "ASC", song_sort_order: "DESC", allow_create_artists: true, allow_create_songs: true)
  end

  def edit
    
  end
end