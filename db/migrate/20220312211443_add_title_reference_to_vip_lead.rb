class AddTitleReferenceToVipLead < ActiveRecord::Migration[6.0]
  def change
    add_reference :vip_leads, :title, foreign_key: true
  end
end
