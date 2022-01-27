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

  def luggage
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Bagagères / Utilitaires' })
  end

  def water
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Nautiques' })
  end

  def animals
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Transports animaliers' })
  end

  def garden
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Espaces verts' })
  end

  def bin
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Bennes' })
  end

  def moto
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Porte-moto/quad' })
  end

  def car
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Porte-voiture' })
  end

  def truck
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Porte-engins' })
  end

  def trail
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Remorques plateau' })
  end

  def close
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Remorques fourgon' })
  end

  def market
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Remorques magasin' })
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



end
