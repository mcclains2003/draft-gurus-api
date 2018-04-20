# Uncomment out for Heroku seeding

# Seed Draft Year ***************************

# DraftYear.create(year: "2018")

# Seed Draft Year  ends**********************



# Seed Drafts ******************************

# drafts = ["Shaun's Awesome Picks", "Justin's OK Picks", "2018 NFL Draft"]

# drafts.each do |draft|
#     Draft.create!(title: draft)
# end

# Seed Drafts ends***************************



# Seed Rounds *****************************

# rounds = [*1..7]

# rounds.each do |round|
#     Round.create!(round: round)
# end

# Seed Rounds ends*************************



# Seed Picks ******************************

# picks = [*1..256]

# picks.each do |pick|
#     if pick >= 1 && pick <= 32
#         Pick.create!(number: pick, round_id: 1)
#     elsif pick >= 33 && pick <= 64
#         Pick.create!(number: pick, round_id: 2)
#     elsif pick >= 65 && pick <= 100
#         Pick.create!(number: pick, round_id: 3)
#     elsif pick >= 101 && pick <= 137
#         Pick.create!(number: pick, round_id: 4)
#     elsif pick >= 138 && pick <= 174
#         Pick.create!(number: pick, round_id: 5)
#     elsif pick >= 175 && pick <= 218
#         Pick.create!(number: pick, round_id: 6)    
#     elsif pick >= 219
#         Pick.create!(number: pick, round_id: 7)
#     end
# end

# Seed Picks ends*************************



# Seed Teams *****************************

# teams = ["Arizona Cardinals", 
#     "Atlanta Falcons", 
#     "Baltimore Ravens", 
#     "Buffalo Bills", 
#     "Carolina Panthers", 
#     "Chicago Bears",
#     "Cincinnati Bengals", 
#     "Cleveland Browns",
#     "Dallas Cowboys",
#     "Denver Broncos",
#     "Detroit Lions",
#     "Green Bay Packers",
#     "Houston Texans",
#     "Indianapolis Colts",
#     "Jacksonville Jaguars",
#     "Kansas City Chiefs",
#     "Los Angeles Rams",
#     "Los Angeles Chargers",
#     "Miami Dolphins",
#     "Minnesota Vikings",
#     "New England Patriots",
#     "New Orleans Saints", 
#     "New York Giants", 
#     "New York Jets", 
#     "Oakland Raiders", 
#     "Philadelphia Eagles", 
#     "Pittsburgh Steelers", 
#     "San Francisco 49ers", 
#     "Seattle Seahawks", 
#     "Tampa Bay Buccaneers", 
#     "Tennessee Titans", 
#     "Washington Redskins",]

#     teams.each do |team|
#         Team.create!(name: team)
#     end

# Seed Teams ends *************************



# To Seed Players do below*****************

# run rake players:fetch to scrape player data into Player database

# Seed Players end*************************



# Seed Drafts into the draft year ***********

currentDraft = DraftYear.first

currentDraft.drafts << Draft.find(1)
currentDraft.drafts << Draft.find(2)
currentDraft.drafts << Draft.find(3)

# Seed Drafts into the draft year ends*******
