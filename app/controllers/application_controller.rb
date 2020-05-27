class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def set_preferences
    Preference.destroy_all
    @preference = Preference.create(allow_create_artists: false)
  end
end
