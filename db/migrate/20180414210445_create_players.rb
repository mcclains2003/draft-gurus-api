class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :school
      t.string :year
      t.string :position
      t.string :height
      t.string :weight

      t.timestamps
    end
  end
end
