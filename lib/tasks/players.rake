namespace :players do
  desc "Fill database with player data"
  task fetch: :environment do
    require 'nokogiri'
    require 'open-uri'

    # Player.all.each do |player|
    #   player.destroy!
    # end

    url = "https://www.cbssports.com/nfl/draft/prospect-rankings/"
    doc = Nokogiri::HTML(open(url))

    data = doc.css("tbody tr")

    name = data[1].css(".cell-player a").text
    school = data[1].css(".cell-school a").text
    year = data[1].css(".cell-stats")[0].text.strip
    position = data[1].css(".cell-stats")[1].text.strip
    height = data[1].css(".cell-stats")[3].text.strip
    weight = data[1].css(".cell-light-text")[5].text.strip

    Player.create(name: name, school: school, year: year, position: position, height: height, weight: weight)

    # data.each_with_index do |player_data, index|
    #   if index <= 377
    #     name = player_data.css(".cell-player a").text
    #     school = player_data.css(".cell-school a").text
    #     year = player_data.css(".cell-stats")[0].text.strip
    #     position = player_data.css(".cell-stats")[1].text.strip
    #     height = player_data.css(".cell-stats")[3].text.strip
    #     weight = player_data.css(".cell-light-text")[5].text.strip

    #     Player.create(name: name, school: school, year: year, position: position, height: height, weight: weight)
    #   end

    # end

  end

end



# desc "Fetch data and feed the database"
# task :feed_database => :environment do
#   require 'nokogiri'
#   require 'open-uri'

#   range = (1..100)
#   url  = "http://www.example.com"
#   doc  = Nokogiri::HTML(open(url))

#   range.each do |num|
#     name   = doc.at_css("tr:nth-child(#{num})).text
#     Model.create(name: name)
#   end
# end