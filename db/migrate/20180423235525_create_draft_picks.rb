class CreateDraftPicks < ActiveRecord::Migration[5.2]
  def change
    create_table :draft_picks do |t|
      t.integer :draft_id
      t.integer :pick_id

      t.timestamps
    end
  end
end