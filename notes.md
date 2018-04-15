DRAFT_YEAR: { year: “2018” } - done?
 - Has many drafts

DRAFT: { name: “Shauns Mock” } - done?
 - Belongs to a year
 - Has many rounds

ROUND: { round: “1”, pick: 21 } - done?
 - Has many picks

PICK: { number: 1, team: 1, player: 1 } - done?
 - Belongs to a round
 - Belongs to player
 - Belongs to a team

TEAM: { name: “Dallas Cowboys” } - done?
 - Has many players
 - Has many picks

PLAYER: { name: “Saquon Barkley, school: “Penn St.”, year: “Jr”, position: “RB”, height: “6-0”, weight: 233 } - done?
 - Belongs to a pick
 - Belongs to a team
