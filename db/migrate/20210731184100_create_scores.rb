class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.references :round, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.float :points

      t.timestamps
    end
  end
end
