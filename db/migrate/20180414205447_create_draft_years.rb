class CreateDraftYears < ActiveRecord::Migration[5.2]
  def change
    create_table :draft_years do |t|
      t.string :year

      t.timestamps
    end
  end
end
