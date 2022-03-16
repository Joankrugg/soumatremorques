class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @products = Product.all
    @vip_lead = VipLead.new
    @newsletter_lead = NewsletterLead.new
    @white_book_lead = WhiteBookLead.new
  end

  def articles

  end

  def holidays
    @vip_lead = VipLead.new
  end

  def horses
    @white_book_lead = WhiteBookLead.new
    @vip_lead = VipLead.new
  end

  def smart
    @vip_lead = VipLead.new
  end

  def constant_gardener
    @vip_lead = VipLead.new
  end
end
