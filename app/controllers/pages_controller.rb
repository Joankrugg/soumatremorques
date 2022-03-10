class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @products = Product.all
    @vip_lead = VipLead.new
  end

  def articles

  end

  def holydays

  end

  def horses

  end

  def smart

  end

  def constant_gardener

  end
end
