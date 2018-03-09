class Restaurant < ActiveRecord::Base

  validates :name, :opening_hour, :closing_hour, presence: true
  validates :opening_hour, :closing_hour, numericality: { only_integer: true }

  belongs_to :category
  has_many :reservations

end
