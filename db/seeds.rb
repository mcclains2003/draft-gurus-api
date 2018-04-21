# Uncomment out for Heroku seeding

# Seed Draft Year ***************************

DraftYear.create(year: "2018")

# Seed Draft Year  ends**********************



# Seed Drafts ******************************

drafts = ["Shaun's Awesome Picks", "Justin's OK Picks", "2018 NFL Draft"]

drafts.each do |draft|
    Draft.create!(title: draft)
end

# Seed Drafts ends***************************



# Seed Rounds *****************************

rounds = [*1..7]

rounds.each do |round|
    Round.create!(round: round)
end

# Seed Rounds ends*************************



# Seed Picks ******************************

picks = [*1..256]

picks.each do |pick|
    if pick >= 1 && pick <= 32
        Pick.create!(number: pick, round_id: 1)
    elsif pick >= 33 && pick <= 64
        Pick.create!(number: pick, round_id: 2)
    elsif pick >= 65 && pick <= 100
        Pick.create!(number: pick, round_id: 3)
    elsif pick >= 101 && pick <= 137
        Pick.create!(number: pick, round_id: 4)
    elsif pick >= 138 && pick <= 174
        Pick.create!(number: pick, round_id: 5)
    elsif pick >= 175 && pick <= 218
        Pick.create!(number: pick, round_id: 6)
    elsif pick >= 219
        Pick.create!(number: pick, round_id: 7)
    end
end

# Seed Picks ends*************************



# Seed Teams *****************************

teams = ["Arizona Cardinals", 
    "Atlanta Falcons", 
    "Baltimore Ravens", 
    "Buffalo Bills", 
    "Carolina Panthers", 
    "Chicago Bears",
    "Cincinnati Bengals", 
    "Cleveland Browns",
    "Dallas Cowboys",
    "Denver Broncos",
    "Detroit Lions",
    "Green Bay Packers",
    "Houston Texans",
    "Indianapolis Colts",
    "Jacksonville Jaguars",
    "Kansas City Chiefs",
    "Los Angeles Rams",
    "Los Angeles Chargers",
    "Miami Dolphins",
    "Minnesota Vikings",
    "New England Patriots",
    "New Orleans Saints", 
    "New York Giants", 
    "New York Jets", 
    "Oakland Raiders", 
    "Philadelphia Eagles", 
    "Pittsburgh Steelers", 
    "San Francisco 49ers", 
    "Seattle Seahawks", 
    "Tampa Bay Buccaneers", 
    "Tennessee Titans", 
    "Washington Redskins",]

    teams.each do |team|
        Team.create!(name: team)
    end

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



# Seed Rounds into the individual drafts*****

drafts = Draft.all

drafts.each do |draft|
    draft.rounds << Round.find(1)
    draft.rounds << Round.find(2)
    draft.rounds << Round.find(3)
    draft.rounds << Round.find(4)
    draft.rounds << Round.find(5)
    draft.rounds << Round.find(6)
    draft.rounds << Round.find(7)
end

# Seed Rounds into the individual drafts end**



# Seed Team with Picks ***********************

    arizona = Team.find(1)
    atlanta = Team.find(2)
    baltimore = Team.find(3)
    buffalo = Team.find(4)
    carolina = Team.find(5)
    chicago = Team.find(6)
    cincinnati = Team.find(7)
    cleveland = Team.find(8)
    dallas = Team.find(9)
    denver = Team.find(10)
    detroit = Team.find(11)
    packers = Team.find(12)
    houston = Team.find(13)
    colts = Team.find(14)
    jags = Team.find(15)
    chiefs = Team.find(16)
    rams = Team.find(17)
    chargers = Team.find(18)
    miami = Team.find(19)
    minnesota = Team.find(20)
    patriots = Team.find(21)
    saints = Team.find(22) 
    giants = Team.find(23) 
    jets = Team.find(24)
    oakland = Team.find(25)
    philadelphia = Team.find(26)  
    pittsburgh = Team.find(27)  
    sf = Team.find(28)
    seattle = Team.find(29) 
    buccaneers = Team.find(30) 
    tennessee = Team.find(31) 
    washington = Team.find(32)

    arizona.picks << [Pick.find(15), Pick.find(47), Pick.find(79), Pick.find(97), Pick.find(134), Pick.find(152), Pick.find(182), Pick.find(254)]
    atlanta.picks << [Pick.find(26), Pick.find(58), Pick.find(90), Pick.find(126), Pick.find(200), Pick.find(244), Pick.find(256)]
    baltimore.picks << [Pick.find(16), Pick.find(52), Pick.find(83), Pick.find(118), Pick.find(154), Pick.find(190), Pick.find(215), Pick.find(238)]
    buffalo.picks << [Pick.find(12), Pick.find(22), Pick.find(53), Pick.find(56), Pick.find(65), Pick.find(96), Pick.find(121), Pick.find(166), Pick.find(187)]
    carolina.picks << [Pick.find(24), Pick.find(55), Pick.find(85), Pick.find(88), Pick.find(161), Pick.find(197), Pick.find(234), Pick.find(242)]
    chicago.picks << [Pick.find(8), Pick.find(39), Pick.find(101), Pick.find(111), Pick.find(136), Pick.find(167), Pick.find(198)]
    cincinnati.picks << [Pick.find(21), Pick.find(46), Pick.find(77), Pick.find(100), Pick.find(112), Pick.find(151), Pick.find(158), Pick.find(170), Pick.find(249), Pick.find(252), Pick.find(253)]
    cleveland.picks << [Pick.find(1), Pick.find(4), Pick.find(33), Pick.find(35), Pick.find(64), Pick.find(110), Pick.find(141), Pick.find(161), Pick.find(191)]
    dallas.picks << [Pick.find(19), Pick.find(50), Pick.find(81), Pick.find(116), Pick.find(137), Pick.find(171), Pick.find(192), Pick.find(193), Pick.find(208), Pick.find(236)]
    denver.picks << [Pick.find(5), Pick.find(40), Pick.find(71), Pick.find(102), Pick.find(105), Pick.find(133), Pick.find(151), Pick.find(154), Pick.find(168)]
    detroit.picks << [Pick.find(20), Pick.find(51), Pick.find(82), Pick.find(117), Pick.find(153), Pick.find(237)]
    packers.picks << [Pick.find(14), Pick.find(45), Pick.find(76), Pick.find(101), Pick.find(133), Pick.find(138), Pick.find(172), Pick.find(174), Pick.find(186), Pick.find(207), Pick.find(232), Pick.find(239)]
    houston.picks << [Pick.find(68), Pick.find(80), Pick.find(98), Pick.find(103), Pick.find(177), Pick.find(211), Pick.find(214), Pick.find(222)]
    colts.picks << [Pick.find(6), Pick.find(36), Pick.find(37), Pick.find(49), Pick.find(67), Pick.find(100), Pick.find(131), Pick.find(164), Pick.find(195)]
    jags.picks << [Pick.find(29), Pick.find(61), Pick.find(93), Pick.find(129), Pick.find(203), Pick.find(230), Pick.find(247)]
    chiefs.picks << [Pick.find(54), Pick.find(78), Pick.find(86), Pick.find(122), Pick.find(124), Pick.find(196), Pick.find(233), Pick.find(243)]
    rams.picks << [Pick.find(87), Pick.find(111), Pick.find(135), Pick.find(136), Pick.find(176), Pick.find(183), Pick.find(194), Pick.find(195)]
    chargers.picks << [Pick.find(17), Pick.find(48), Pick.find(84), Pick.find(119), Pick.find(155), Pick.find(191), Pick.find(251)]
    miami.picks << [Pick.find(11), Pick.find(42), Pick.find(73), Pick.find(123), Pick.find(131), Pick.find(209), Pick.find(227), Pick.find(229)]
    minnesota.picks << [Pick.find(30), Pick.find(62), Pick.find(94), Pick.find(167), Pick.find(204), Pick.find(213), Pick.find(218), Pick.find(225)]
    patriots.picks << [Pick.find(23), Pick.find(31), Pick.find(43), Pick.find(63), Pick.find(95), Pick.find(198), Pick.find(210), Pick.find(219)]
    saints.picks << [Pick.find(27), Pick.find(91), Pick.find(127), Pick.find(147), Pick.find(164), Pick.find(189), Pick.find(201), Pick.find(245)]
    giants.picks << [Pick.find(2), Pick.find(34), Pick.find(66), Pick.find(69), Pick.find(104), Pick.find(130)]
    jets.picks << [Pick.find(3), Pick.find(72), Pick.find(103), Pick.find(148), Pick.find(165), Pick.find(209)]
    oakland.picks << [Pick.find(10), Pick.find(41), Pick.find(75), Pick.find(110), Pick.find(159), Pick.find(173), Pick.find(185), Pick.find(212), Pick.find(216), Pick.find(217), Pick.find(228)]
    philadelphia.picks << [Pick.find(32), Pick.find(130), Pick.find(132), Pick.find(169), Pick.find(206), Pick.find(250)]
    pittsburgh.picks << [Pick.find(28), Pick.find(60), Pick.find(92), Pick.find(148), Pick.find(165), Pick.find(220), Pick.find(246)]
    sf.picks << [Pick.find(9), Pick.find(59), Pick.find(70), Pick.find(74), Pick.find(128), Pick.find(143), Pick.find(184), Pick.find(223), Pick.find(240)]
    seattle.picks << [Pick.find(18), Pick.find(120), Pick.find(141), Pick.find(146), Pick.find(156), Pick.find(168), Pick.find(226), Pick.find(248)]
    buccaneers.picks << [Pick.find(7), Pick.find(38), Pick.find(98), Pick.find(135), Pick.find(166), Pick.find(188)]
    tennessee.picks << [Pick.find(25), Pick.find(57), Pick.find(89), Pick.find(125), Pick.find(162), Pick.find(199)]
    washington.picks << [Pick.find(13), Pick.find(44), Pick.find(109), Pick.find(142), Pick.find(163), Pick.find(205), Pick.find(231), Pick.find(241)]

# Seed Team with Picks ends ******************
