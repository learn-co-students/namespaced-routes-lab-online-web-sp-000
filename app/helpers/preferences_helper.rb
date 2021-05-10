module PreferencesHelper

  def allow_create_artists
    !Artist.find_by(id: params[:artist_id])
  end
end
