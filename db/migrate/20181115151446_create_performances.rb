class CreatePerformances < ActiveRecord::Migration[5.1]
  def change
    create_table :performances do |t|
      t.string :title
      t.string :subtitle
      t.date :performance_date
      t.string :venue
      t.string :poster
      t.text :description
      t.string :ticket_url

      t.timestamps
    end
  end
end
