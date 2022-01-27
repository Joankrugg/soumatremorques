class Product < ApplicationRecord
  has_one_attached :photo
  belongs_to :category
  belongs_to :subcategory
  belongs_to :brand
  has_many :cart_products, dependent: :destroy
  has_many :carts, through: :cart_products
end
