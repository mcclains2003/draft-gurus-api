class Pick < ApplicationRecord
    belongs_to :player, optional: true
    belongs_to :team, optional: true
end
