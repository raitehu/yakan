class ChangeColumnToPerformance < ActiveRecord::Migration[5.1]
  def up
    change_column :performances, :has_reserved, :boolean
  end

  def down
    change_column :performances, :has_reserved, :time
  end
end
