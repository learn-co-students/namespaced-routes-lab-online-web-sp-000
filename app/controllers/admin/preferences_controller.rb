class Admin::PreferencesController < ApplicationController
    def edit
        @preference = Preference.find_by_id(1)
    end

    def update
        @preference = Preference.find_by_id(1)
        @preference.update(preference_params)
    end
    
    def index
    end

    private

    def preference_params
        params.require(:preference).permit(:allow_create_songs, :allow_create_artists)
    end

end