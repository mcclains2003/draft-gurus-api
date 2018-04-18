class Draft < ApplicationRecord
    has_many :rounds
    belongs_to :year
end
