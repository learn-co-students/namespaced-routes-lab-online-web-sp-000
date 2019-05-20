module SongsHelper
def sort_songs(preference, songs)
     if preference.song_sort_order == "DESC"
       songs.sort_by { |song| -song.title }
     else
       preference.songs.sort_by {|song| song.title }
     end
   end
 end		 
