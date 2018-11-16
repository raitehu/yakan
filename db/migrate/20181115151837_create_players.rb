class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :role
      t.string :name
      t.integer :performance_id
      t.integer :program_id

      t.timestamps
    end
  end
end
