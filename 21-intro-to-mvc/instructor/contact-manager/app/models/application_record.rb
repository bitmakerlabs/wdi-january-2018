class ApplicationRecord < ActiveRecord::Base
  # There is no table for this model
  self.abstract_class = true
end
