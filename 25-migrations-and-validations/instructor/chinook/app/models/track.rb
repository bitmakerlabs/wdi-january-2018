class Track < ApplicationRecord

  SHORT = 180000
  LONG  = 360000

  scope :by_name, -> { order(name: :asc) }
  scope :short,   -> { shorter_than(SHORT) }
  scope :long,    -> { longer_than_or_equal_to(LONG) }
  scope :medium,  -> { longer_than_or_equal_to(SHORT).shorter_than(LONG) }

  def self.starts_with(char)
    where('name ILIKE ?', "#{ char }%")
  end

  def self.shorter_than(milliseconds)
    where('milliseconds < ?', milliseconds)
  end

  def self.longer_than_or_equal_to(milliseconds)
    where('milliseconds >= ?', milliseconds)
  end

end
