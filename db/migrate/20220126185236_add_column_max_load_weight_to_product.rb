class AddColumnMaxLoadWeightToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :max_load_weight, :integer
  end
end
