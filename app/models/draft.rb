class Draft < ApplicationRecord
    has_many :draft_rounds
    has_many :rounds, :through => :draft_rounds
    belongs_to :year, optional: true
end
