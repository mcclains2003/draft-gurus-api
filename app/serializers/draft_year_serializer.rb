class DraftYearSerializer < ActiveModel::Serializer
  attributes :id, :year

  has_many :drafts
end
