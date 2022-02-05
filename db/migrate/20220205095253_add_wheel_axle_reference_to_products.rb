class AddWheelAxleReferenceToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :wheel_axle, foreign_key: true
  end
end
