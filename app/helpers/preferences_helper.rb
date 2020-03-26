module PreferencesHelper
  def allow_create_songs?
    get_preferences.allow_create_songs
  end
end
