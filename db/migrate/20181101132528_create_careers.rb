class CreateCareers < ActiveRecord::Migration[5.1]
  def change
    create_table :careers do |t|
      t.date :the_day
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
