class Reservation < ApplicationRecord
  validates :name, presence: true
  validates :surname, presence: true
  validates :mail, format: { with:  /\A[^@\s]+@[^@\s]+\z/}, presence: true
  belongs_to :product
end
