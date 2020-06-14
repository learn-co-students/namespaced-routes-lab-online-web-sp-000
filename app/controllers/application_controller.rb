class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def preference
  	Preference.find_by_id(1) || Preference.new(preference_params)
  end


  private

  def preference_params
  	params.require(:preference).permit(:allow_create_songs, :allow_create_artists)
  end


end
