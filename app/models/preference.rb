
class Preference < ActiveRecord::Base
  #applicationrecord allows us to use this as a single point of entry by creating this model - we would have to create this other model:
  # class ApplicationRecord < ActiveRecord::Base
  # self.abstract_class = true
  # end
end
