class CreateRounds < ActiveRecord::Migration[6.0]
  def change
    create_table :rounds do |t|
      t.integer :number
      t.references :dispute, null: true, foreign_key: true

      t.timestamps
    end
  end
end
