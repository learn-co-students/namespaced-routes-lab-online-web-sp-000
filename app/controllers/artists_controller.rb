class ArtistsController < ApplicationController
  def index
    @artists = Artist.all.sort { |a, b| a.name <=> b.name }
    @artists.reverse! if Preference.first&.artist_sort_order == "DESC"
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    redirect_to artists_path unless Preference.first.allow_create_artists
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to @artist
    else
      render :new
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])

    @artist.update(artist_params)

    if @artist.save
      redirect_to @artist
    else
      render :edit
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    flash[:notice] = "Artist deleted."
    redirect_to artists_path
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
