class DraftSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :year
  has_many :picks
end
