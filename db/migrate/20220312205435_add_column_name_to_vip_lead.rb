class AddColumnNameToVipLead < ActiveRecord::Migration[6.0]
  def change
    add_column :vip_leads, :name, :string
  end
end
