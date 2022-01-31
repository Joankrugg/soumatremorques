class AddDocumentReferenceToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :document, foreign_key: true
  end
end
