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

  end

  def horses

  end

  def smart

  end

  def constant_gardener

  end
end
