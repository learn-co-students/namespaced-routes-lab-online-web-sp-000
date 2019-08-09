class Admin::PreferencesController < ApplicationController
    def index
        @preference = Preference.first
    end

    # def show
    #     @preference = Preference.first
    #     redirect_to edit_admin_preference_path(@preference)
    # end

    # def edit
    #     @preference = Preference.first
    # end

    def update
        @preference = Preference.first
        @preference.update(params.require(:preference).permit(:artist_sort_order, :song_sort_order, :allow_create_artists, :allow_create_songs))
    end

end
