class Preference < ApplicationRecord

  def self.sort_choices
    ['ASC', 'DESC']
  end
end
