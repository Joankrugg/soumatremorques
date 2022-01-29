class ProductsController < ApplicationController
  skip_before_action :authenticate_user!
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

  def wires
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Accessories' }, subcategories: { name: 'Électricité' })
  end

  def lockers
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Accessories' }, subcategories: { name: 'Attelages' })
  end

  def sticks
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Accessories' }, subcategories: { name: 'Essieux' })
  end

  def wheels
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Accessories' }, subcategories: { name: 'Roues' })
  end

  def suspensions
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Accessories' }, subcategories: { name: 'Suspensions / Renforts' })
  end

  def sheets
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Accessories' }, subcategories: { name: 'Bâches' })
  end

  def maintenance
    @products = Product.joins(:category).where(categories: { name: 'Maintenance' })
  end

  def set
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Maintenance' }, subcategories: { name: 'Réglages' })
  end

  def reinforcements
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Maintenance' }, subcategories: { name: 'Suspensions / Renforts' })
  end

  def direction
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Maintenance' }, subcategories: { name: 'Aide à la manoeuvre' })
  end

  def stabilisation
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Maintenance' }, subcategories: { name: 'Stabilisation' })
  end

  def installations
    @products = Product.joins(:category).where(categories: { name: 'Installations' })
  end

  def wire_installation
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Installations' }, subcategories: { name: 'Électricité' })
  end

  def locker_installation
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Installations' }, subcategories: { name: 'Attelages' })
  end

  def stick_installation
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Installations' }, subcategories: { name: 'Essieux' })
  end

  def reinforcements_installation
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Installations' }, subcategories: { name: 'Suspensions / Renforts' })
  end

  def direction_installation
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Installations' }, subcategories: { name: 'Aide à la manoeuvre' })
  end

  def stabilisation_installation
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Installations' }, subcategories: { name: 'Stabilisation' })
  end

  def documents
    @products = Product.joins(:category).where(categories: { name: 'Documents' })
  end

  def plate
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Documents' }, subcategories: { name: 'Immatriculations' })
  end

  def technical_control
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Documents' }, subcategories: { name: 'Contrôle technique' })
  end

  def insurrance
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Documents' }, subcategories: { name: 'Assurances' })
  end


end
