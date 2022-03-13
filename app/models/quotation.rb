class Quotation < ApplicationRecord
  belongs_to :product
  belongs_to :title
  belongs_to :purpose
end
