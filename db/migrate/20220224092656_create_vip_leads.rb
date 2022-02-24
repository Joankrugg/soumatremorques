class CreateVipLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :vip_leads do |t|
      t.string :email

      t.timestamps
    end
  end
end
