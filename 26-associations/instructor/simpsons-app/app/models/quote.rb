class Quote < ApplicationRecord
  belongs_to :episode
  belongs_to :character
end
