class AddColumnDumpTrailerToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :dump_trailer, :boolean, null: false, default: false
  end
end
