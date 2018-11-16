class CreateFeeStructures < ActiveRecord::Migration[5.1]
  def change
    create_table :fee_structures do |t|
      t.string :who
      t.integer :how_much
      t.integer :performance_id

      t.timestamps
    end
  end
end
