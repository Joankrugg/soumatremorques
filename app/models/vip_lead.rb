class VipLead < ApplicationRecord
  validates :email, format: { with:  /\A[^@\s]+@[^@\s]+\z/}, presence: true
  belongs_to :title
  validates :name, presence: true
  validates :surname, presence: true
end
