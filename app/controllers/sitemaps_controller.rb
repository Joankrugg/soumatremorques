class SitemapsController < ApplicationController
  skip_before_action :authenticate_user!
  layout :false
  before_action :init_sitemap

  def index
    @products = Product.all
    @categories = Category.all
    @subcategories = Subcategory.all
  end


  private

  def init_sitemap
    headers['Content-Type'] = 'application/xml'
  end

end
