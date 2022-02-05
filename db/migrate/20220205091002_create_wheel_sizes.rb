class CreateWheelSizes < ActiveRecord::Migration[6.0]
  def change
    create_table :wheel_sizes do |t|
      t.string :name

      t.timestamps
    end
  end
end
