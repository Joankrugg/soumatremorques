class AddColumnWidthToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :width, :float
  end
end
