class AddWheelSizeReferenceToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :wheel_size, foreign_key: true
  end
end
