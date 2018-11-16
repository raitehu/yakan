class AddOpenToPerformance < ActiveRecord::Migration[5.1]
  def change
    add_column :performances, :open_time, :time
    add_column :performances, :start_time, :time
    add_column :performances, :finish_time, :time
    add_column :performances, :has_reserved, :time
  end
end
