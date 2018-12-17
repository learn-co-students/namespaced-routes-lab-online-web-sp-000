class Preference < ActiveRecord::Base

  def song_sort_asc
    @songs = Song.all.order(title: :asc)
  end

  def song_sort_desc
    @songs = Song.all.order(title: :desc)
  end

end
