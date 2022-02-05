class CreateWheelAxles < ActiveRecord::Migration[6.0]
  def change
    create_table :wheel_axles do |t|
      t.string :category

      t.timestamps
    end
  end
end
