class DraftPick < ApplicationRecord
    belongs_to :draft
    belongs_to :pick
end
