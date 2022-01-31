class AddColumnHeightToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :heigth, :float
  end
end
