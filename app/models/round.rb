class Round < ApplicationRecord
    has_many :draft_rounds
    has_many :drafts, :through => :draft_rounds

    has_many :picks
end
