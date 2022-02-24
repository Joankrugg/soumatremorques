class CompatibilityLead < ApplicationRecord
  validates :email, format: { with:  /\A[^@\s]+@[^@\s]+\z/}, presence: true
end
