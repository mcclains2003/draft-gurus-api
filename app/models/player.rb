class Player < ApplicationRecord
    has_many :player_picks
    has_many :picks, :through => :player_picks

    has_many :player_teams
    has_many :teams, :through => :player_teams
end
