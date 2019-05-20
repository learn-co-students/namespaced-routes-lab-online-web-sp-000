module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def sort_artists(preference, artists)
    if preference.artist_sort_order == "DESC"
      artists.sort_by { |artist| -artist.name }
    else
      preference.artists.sort_by {|artist| artist.name }
    end
  end

end
