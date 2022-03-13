class AddPurposeReferenceToQuotations < ActiveRecord::Migration[6.0]
  def change
    add_reference :quotations, :purpose, foreign_key: true
  end
end
