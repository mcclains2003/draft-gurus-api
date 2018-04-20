class DraftRound < ApplicationRecord
    belongs_to :draft
    belongs_to :round
end
