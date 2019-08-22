class ArtistsController < ApplicationController
  def index
    begin
      sort_order = Preference.last.artist_sort_order
    rescue NoMethodError => e
      sort_order = nil
    end

    @artists = Artist.all
    if !sort_order.nil? && sort_order == 'DESC'
      @artists.sort_by { |artist| artist.name }.reverse
    else
      @artists.sort_by { |artist| artist.name }
    end

  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    begin
      allow_create = Preference.last.allow_create_artist
    rescue NoMethodError => e
      allow_create = nil
    end

    if !allow_create
      redirect_to artists_path
    end
    
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
