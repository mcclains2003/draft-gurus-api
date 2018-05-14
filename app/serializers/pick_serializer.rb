class PickSerializer < ActiveModel::Serializer
  attributes :id, :number, :round

  has_many :teams
  has_many :players
  has_many :drafts
end
