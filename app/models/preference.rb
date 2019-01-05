class Preference

  def initialize(hash)
    @prefs_hash = hash
  end

  def artist_sort_order
    @prefs_hash[:artist_sort_order]
  end

  def song_sort_order
    @prefs_hash[:song_sort_order]
  end

  def allow_create_artists
    @prefs_hash[:allow_create_artists]
  end

  def allow_create_songs
    @prefs_hash[:allow_create_songs]
  end
end