module ApplicationHelper
  def get_preferences
    Preference.first
  end
end
