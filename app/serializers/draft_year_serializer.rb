class DraftYearSerializer < ActiveModel::Serializer
  attribute :year

  has_many :drafts
end
