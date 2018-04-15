class CreatePicks < ActiveRecord::Migration[5.2]
  def change
    create_table :picks do |t|
      t.string :number
      t.belongs_to :round, index: true
      t.belongs_to :player, index: true

      t.timestamps
    end
  end
end
