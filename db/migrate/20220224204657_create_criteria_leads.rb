class CreateCriteriaLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :criteria_leads do |t|
      t.string :email
      t.string :link

      t.timestamps
    end
  end
end
