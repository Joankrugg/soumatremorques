class Product < ApplicationRecord
  has_one_attached :photo
  belongs_to :category
  belongs_to :subcategory
  belongs_to :brand
  belongs_to :document
  belongs_to :usage
  belongs_to :wheel_size
  has_many :cart_products, dependent: :destroy
  has_many :carts, through: :cart_products
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :price, :rent, :second_hand, :max_load_weight ],
    associated_against: {
      category: [ :name],
      document: [ :name],
      brand: [ :name],
      usage: [ :name],
      subcategory: [ :name]
    },
    using: {
      tsearch: { prefix: true }
    }
end
