namespace :players do
  desc "Fill database with player data"
  task fetch: :environment do
    require 'nokogiri'
    require 'open-uri'

    Player.delete_all

    url = "https://www.cbssports.com/nfl/draft/prospect-rankings/"
    doc = Nokogiri::HTML(open(url))

    data = doc.css("tbody tr")

    data.each_with_index do |player_data, index|
      if index <= 377
        name = player_data.css(".cell-player a").text
        school = player_data.css(".cell-school a").text
        year = player_data.css(".cell-stats")[0].text.strip
        position = player_data.css(".cell-stats")[1].text.strip
        height = player_data.css(".cell-stats")[3].text.strip
        weight = player_data.css(".cell-light-text")[5].text.strip

        Player.create(name: name, school: school, year: year, position: position, height: height, weight: weight)
      end

    end

  end

  desc "Fix missing players"
  task fix: :environment do
    
    cs = Player.find(5)
    cs.name = "Courtland Sutton"
    cs.school = "Southern Methodist"
    cs.save

    md = Player.find(20)
    md.name = "Marcus Davenport"
    md.school = "UTSA"
    md.save

    jl = Player.find(84)
    jl.name = "Justin Lawler"
    jl.school = "Southern Methodist"
    jl.save

    is = Player.find(85)
    is.name = "Ito Smith"
    is.school = "Southern Mississippi"
    is.save

    tm = Player.find(85)
    tm.name = "Tarvarius Moore"
    tm.school = "Southern Mississippi"
    tm.save

    tm = Player.find(108)
    tm.name = "Nathan Shepherd"
    tm.school = "Fort Hays State"
    tm.save

    tm = Player.find(119)
    tm.name = "Desmond Harrison"
    tm.school = "West Georgia"
    tm.save

    tm = Player.find(140)
    tm.name = "Trey Quinn"
    tm.school = "Southern Methodist"
    tm.save

    tm = Player.find(152)
    tm.name = "Korey Robertson"
    tm.school = "Southern Mississippi"
    tm.save

    tm = Player.find(217)
    tm.name = "Alex Cappa"
    tm.school = "Humboldt State"
    tm.save

    tm = Player.find(310)
    tm.name = "Michael Joseph"
    tm.school = "Dubuque"
    tm.save

    tm = Player.find(366)
    tm.name = "Max Redfield"
    tm.school = "Indiana (PA)"
    tm.save

    tm = Player.find(377)
    tm.name = "Devron Davis"
    tm.school = "UTSA"
    tm.save

  end

end