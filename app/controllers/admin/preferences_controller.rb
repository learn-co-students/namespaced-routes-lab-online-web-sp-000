class Admin::PreferencesController < ApplicationController
  
  def index
    
  end
  
  def new
    @preference = Preference.new
  end
  
  def create
    Preference.create(preference_params)
  end
  
  private
  
  def preference_params
    params.require(:preference).permit(:song_sort_order, :artist_sort_order, :allow_create_songs, :allow_create_artists)
  end
  
end