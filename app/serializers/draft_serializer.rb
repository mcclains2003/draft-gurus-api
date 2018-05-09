class DraftSerializer < ActiveModel::Serializer
  attributes :id, 
             :title,

             :picks

  def picks
    customized_picks = []

    object.picks.each do |pick|
      custom_pick = pick.attributes

      custom_pick[:players] = pick.players.collect{|player| player.slice(:id, :name, :school, :year, :position, :height, :weight)}

      customized_picks.push(custom_pick)
    end

    return customized_picks
  end

end