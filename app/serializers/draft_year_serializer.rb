class DraftYearSerializer < ActiveModel::Serializer
  attributes :id, 
             :year,

             # has_many
             :drafts

  def drafts
    customized_drafts = []

    object.drafts.each do |draft|
      custom_draft = draft.attributes

      custom_draft[:picks] = draft.picks.collect{|pick| pick.slice(:id, :number, :round)}

      customized_drafts.push(custom_draft)
    end

    return customized_drafts
  end
end