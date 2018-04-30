class TeamSerializer < ActiveModel::Serializer
    attribute :name
  
    has_many :players
    has_many :picks
end