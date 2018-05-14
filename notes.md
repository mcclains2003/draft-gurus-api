DRAFT_YEAR: { year: “2018” } - done?
 - Has many drafts

DRAFT: { name: “Shauns Mock” } - done?
 - Belongs to a year

 - has many draft_picks
 - has many picks, through draft_picks

PICK: { number: 1, team: 1, player: 1 } - done?
 - has many team_picks
 - has many teams, through team_picks

 - has many draft_picks
 - has many drafts, through draft_picks

 - has many player_picks
 - has many players, through player_picks

TEAM: { name: “Dallas Cowboys” } - done?
 - has many player_teams
 - has many players, through player_teams

 - has many team_picks
 - has many picks, through team_picks

PLAYER: { name: “Saquon Barkley, school: “Penn St.”, year: “Jr”, position: “RB”, height: “6-0”, weight: 233 } - done?
 - has many player_picks
 - has many picks, through player_picks

 - has many player_teams
 - has many teams, through player_teams


PID: 5
Name: "Courtland Sutton"
School: "Southern Methodist"

PID: 20
Name: "Marcus Davenport"
School: "UTSA"

PID: 84
Name: "Justin Lawler"
School: "Southern Methodist"

PID: 85
Name: "Ito Smith"
School: "Southern Mississippi"

PID :95
Name: "Tarvarius Moore"
School: "Southern Mississippi"

PID: 108
Name: "Nathan Shepherd"
School: "Fort Hays State"

PID: 119
Name: "Desmond Harrison"
School: "West Georgia"

PID: 140
Name: "Trey Quinn"
School: "Southern Methodist"

PID: 152
Name: "Korey Robertson"
School: "Southern Mississippi"

PID: 217
Name: "Alex Cappa"
School: "Humboldt State"

PID: 310
Name: "Michael Joseph"
School: "Dubuque"

PID: 366
Name: "Max Redfield"
School: "Indiana (PA)"

PID: 377
Name: "Devron Davis"
School: "UTSA"


https://data.heroku.com/datastores/0c0d9c79-cc4c-4db9-9e4a-75f767eb58f1


serializers:
# class DraftSerializer < ActiveModel::Serializer
#   attributes :id, :name

#   belongs_to :draft_year
#   has_many :picks
# end



# class DraftYearSerializer < ActiveModel::Serializer
#   attribute :year

#   has_many :drafts
# end



# class PlayerSerializer < ActiveModel::Serializer
#     attributes :name, :school, :year, :position, :height, :weight
  
#     has_many :picks
#     has_many :teams
# end



# class TeamSerializer < ActiveModel::Serializer
#     attribute :name
  
#     has_many :players
#     has_many :picks
# end