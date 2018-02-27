class Character < ApplicationRecord
  has_many :catchphrases
  has_many :quotes
  has_many :episodes, through: :quotes
end
