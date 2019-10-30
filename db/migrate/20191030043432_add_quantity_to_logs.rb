class AddQuantityToLogs < ActiveRecord::Migration
  def change
    add_column :logs, :quantity, :integer
  end
end
