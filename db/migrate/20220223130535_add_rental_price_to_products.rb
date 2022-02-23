class AddRentalPriceToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :rental_price, :integer
  end
end
