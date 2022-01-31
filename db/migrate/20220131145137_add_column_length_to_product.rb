class AddColumnLengthToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :length, :float
  end
end
