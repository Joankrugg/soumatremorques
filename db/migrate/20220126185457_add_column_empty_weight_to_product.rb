class AddColumnEmptyWeightToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :empty_weight, :integer
  end
end
