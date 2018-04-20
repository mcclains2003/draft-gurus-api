class CreatePicks < ActiveRecord::Migration[5.2]
  def change
    create_table :picks do |t|
      t.integer :number
      t.belongs_to :round, index: true
      t.belongs_to :player, index: true
      t.belongs_to :team, index: true

      t.timestamps
    end
  end
end
