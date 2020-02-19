module ApplicationHelper
  def allow_create_artists
    Preference.first.allow_create_artists
  end

  def allow_create_songs
    Preference.first.allow_create_songs
  end
end
