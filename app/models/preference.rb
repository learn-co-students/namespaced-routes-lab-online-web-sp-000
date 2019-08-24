class Preference < ActiveRecord::Base
  validates :song_sort_order, inclusion: { in: ["ASC", "DESC"] }
  validates :artist_sort_order, inclusion: { in: ["ASC", "DESC"] }
end
