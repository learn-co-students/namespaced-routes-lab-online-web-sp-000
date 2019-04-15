require 'rails_helper'
if RUBY_VERSION>="2.6.0"
 if Rails.version < "5"
   class ActionController::TestResponse < ActionDispatch::TestResponse
     def recycle!
       # hack to avoid MonitorMixin double-initialize error:
       @mon_mutex_owner_object_id = nil
       @mon_mutex = nil
       initialize
     end
   end
 else
   puts "Monkeypatch for ActionController::TestResponse no longer needed"
 end
end

RSpec.describe ArtistsController do

  describe "GET new" do
    it "redirects when access is turned off" do
      p = Preference.create(allow_create_artists: false)
      get :new
      expect(response).to redirect_to artists_path
    end
  end

end
