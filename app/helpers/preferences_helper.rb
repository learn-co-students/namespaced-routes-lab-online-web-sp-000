module PreferencesHelper

	def preferences
		Preference.all.last
	end
end
