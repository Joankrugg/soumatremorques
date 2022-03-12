class AddColumnSurnameToVipLead < ActiveRecord::Migration[6.0]
  def change
    add_column :vip_leads, :surname, :string
  end
end
