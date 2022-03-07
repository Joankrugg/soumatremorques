xml.instruct!
xml.tag! 'sitemapindex', 'xmlns' => "http://www.sitemaps.org/schemas/sitemap/0.9" do

  xml.tag! 'url' do
    xml.tag! 'loc', root_url
  end


  @products.each do |product|
    xml.tag! 'url' do
      xml.tag! 'loc', product_url(product)
      xml.lastmod product.updated_at.strftime("%F")
    end
  end

  @categories.each do |category|
    xml.tag! 'url' do
      xml.tag! 'loc', product_url(category.name)
      xml.lastmod category.updated_at.strftime("%F")
    end
  end

  @subcategories.each do |subcategory|
    xml.tag! 'url' do
      xml.tag! 'loc', product_url(subcategory.name)
      xml.lastmod subcategory.updated_at.strftime("%F")
    end
  end

end
