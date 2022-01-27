class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def trailers
    @products = Product.joins(:category).where(categories: { name: 'Trailers' })
  end

  def accessories
    @products = Product.joins(:category).where(categories: { name: 'Accessories' })
  end

  def maintenance
    @products = Product.joins(:category).where(categories: { name: 'Maintenance' })
  end

  def installations
    @products = Product.joins(:category).where(categories: { name: 'Installations' })
  end

  def documents
    @products = Product.joins(:category).where(categories: { name: 'Documents' })
  end

  def luggage
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Bagagères / Utilitaires' })
  end
end
