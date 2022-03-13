class Title < ApplicationRecord
  has_many :vip_leads
  has_many :quotations
end
