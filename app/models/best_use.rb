class BestUse < ApplicationRecord
  has_many :product_best_uses, dependent: :destroy
  has_many :products, through: :product_best_uses
end
