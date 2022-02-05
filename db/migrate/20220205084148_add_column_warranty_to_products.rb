class AddColumnWarrantyToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :warranty, :integer
  end
end
