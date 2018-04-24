class CreatePlayerPicks < ActiveRecord::Migration[5.2]
  def change
    create_table :player_picks do |t|
      t.references :player, foreign_key: true
      t.references :pick, foreign_key: true

      t.timestamps
    end
  end
end
