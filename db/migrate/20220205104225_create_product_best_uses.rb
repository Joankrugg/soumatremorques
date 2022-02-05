class CreateProductBestUses < ActiveRecord::Migration[6.0]
  def change
    create_table :product_best_uses do |t|
      t.references :product, null: false, foreign_key: true
      t.references :best_use, null: false, foreign_key: true

      t.timestamps
    end
  end
end
