class CreateDraftRounds < ActiveRecord::Migration[5.2]
  def change
    create_table :draft_rounds do |t|
      t.belongs_to :draft, index: true
      t.belongs_to :round, index: true

      t.timestamps
    end
  end
end
