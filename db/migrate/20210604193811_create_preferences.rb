class CreatePreferences < ActiveRecord::Migration[6.1]
  def change
    create_table :preferences do |t|
      t.boolean :allow_create_artists

      t.timestamps
    end
  end
end
