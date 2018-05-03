class Pick < ApplicationRecord
    has_many :team_picks
    has_many :teams, :through => :team_picks

    has_many :draft_picks
    has_many :drafts, :through => :draft_picks

    has_many :player_picks
    has_many :players, :through => :player_picks
end
