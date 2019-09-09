class Admin::PreferencesController < ApplicationController
  def new
    @preference = Preference.first_or_create
    @sort_choices = Preference.sort_choices
  end

  def create
    @preference = Preference.new(preference_params)
    @preference.save
    redirect_to admin_preference_path(@preference)
  end

  def show
    @preference = Preference.find(params[:id])
  end

  def edit
    @preference = Preference.find(params[:id])
    @sort_choices = Preference.sort_choices
  end

  def update
    @preference = Preference.find(params[:id])

    @preference.update(preference_params)

    if @preference.save
      redirect_to admin_preferences_path
    else
      render :edit
    end
  end

  def index
    @preference = Preference.first
  end

  private

  def preference_params
    params.require(:preference).permit(:song_sort_order, :artist_sort_order, :allow_create_songs, :allow_create_artists)
  end

end
