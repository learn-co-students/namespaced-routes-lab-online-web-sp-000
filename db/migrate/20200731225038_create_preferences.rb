class CreatePreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :preferences do |t|
      t.string :song
      t.string :artist

      t.timestamps
    end
  end
end
