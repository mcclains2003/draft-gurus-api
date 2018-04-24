class Draft < ApplicationRecord
    belongs_to :year, optional: true

    has_many :draft_picks
    has_many :picks, :through => :draft_picks
end
