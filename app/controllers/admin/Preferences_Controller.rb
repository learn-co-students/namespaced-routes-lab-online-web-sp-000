class Admin::PreferencesController < ApplicationController


    def index
        @prefernces = Preference.all
    end
    



end    