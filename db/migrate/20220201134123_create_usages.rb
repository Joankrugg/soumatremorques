class CreateUsages < ActiveRecord::Migration[6.0]
  def change
    create_table :usages do |t|
      t.string :name

      t.timestamps
    end
  end
end
