class CreatePrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :programs do |t|
      t.string :format
      t.string :program_title
      t.string :effect
      t.integer :performance_id

      t.timestamps
    end
  end
end
