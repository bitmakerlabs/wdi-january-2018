class Episode < ApplicationRecord
  has_many :quotes
  has_many :characters, through: :quotes
end
