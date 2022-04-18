class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :surname
      t.boolean :firm
      t.string :siret
      t.string :mail
      t.integer :account
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
