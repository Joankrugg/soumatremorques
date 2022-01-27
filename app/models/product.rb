class Product < ApplicationRecord
  has_one_attached :photo
  belongs_to :category
  belongs_to :subcategory
  belongs_to :brand
end