class CreateDrafts < ActiveRecord::Migration[5.2]
  def change
    create_table :drafts do |t|
      t.string :title
      t.belongs_to :draft_year, index: true

      t.timestamps
    end
  end
end
