class CreateDisputes < ActiveRecord::Migration[6.0]
  def change
    create_table :disputes do |t|
      t.string :name

      t.timestamps
    end
  end
end
