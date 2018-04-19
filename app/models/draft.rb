class Draft < ApplicationRecord
    has_many :rounds
    belongs_to :year, optional: true
end
