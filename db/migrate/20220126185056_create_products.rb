class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.boolean :rent
      t.boolean :second_hand

      t.timestamps
    end
  end
end
