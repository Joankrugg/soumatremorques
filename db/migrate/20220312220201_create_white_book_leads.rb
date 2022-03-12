class CreateWhiteBookLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :white_book_leads do |t|
      t.string :email

      t.timestamps
    end
  end
end
