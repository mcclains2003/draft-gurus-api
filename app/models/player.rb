class Player < ApplicationRecord
    belongs_to :team, optional: true
    belongs_to :pick, optional: true
end
