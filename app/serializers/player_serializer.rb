class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :school, :year, :position, :height, :weight

  has_many :picks
  has_many :teams
end