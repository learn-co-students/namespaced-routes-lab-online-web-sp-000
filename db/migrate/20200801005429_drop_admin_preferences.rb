class DropAdminPreferences < ActiveRecord::Migration[5.0]
  def change
    drop_table :admin_preferences
  end
end
