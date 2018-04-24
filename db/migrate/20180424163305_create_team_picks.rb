class CreateTeamPicks < ActiveRecord::Migration[5.2]
  def change
    create_table :team_picks do |t|
      t.references :team, foreign_key: true
      t.references :pick, foreign_key: true

      t.timestamps
    end
  end
end
