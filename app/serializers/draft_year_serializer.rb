class DraftYearSerializer < ActiveModel::Serializer
  attributes :id, 
             :year,

             # has_many
             :drafts

  def drafts
    customized_drafts = []

    object.drafts.each do |draft|
      custom_draft = draft.attributes

      customized_drafts.push(custom_draft)
    end

    return customized_drafts
  end
  
end