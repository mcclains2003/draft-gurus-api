class Team < ApplicationRecord
    has_many :player_teams
    has_many :players, :through => :player_teams

    has_many :team_picks
    has_many :picks, :through => :team_picks
end