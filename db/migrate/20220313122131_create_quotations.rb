class CreateQuotations < ActiveRecord::Migration[6.0]
  def change
    create_table :quotations do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
