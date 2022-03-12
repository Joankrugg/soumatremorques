class CreateNewsletterLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :newsletter_leads do |t|
      t.string :email

      t.timestamps
    end
  end
end
