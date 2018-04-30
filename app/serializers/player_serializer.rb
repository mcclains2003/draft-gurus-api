class PlayerSerializer < ActiveModel::Serializer
    attributes :name, :school, :year, :position, :height, :weight
  
    has_many :picks
    has_many :teams
end