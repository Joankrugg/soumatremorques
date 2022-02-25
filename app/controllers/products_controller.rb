class ProductsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    if params[:search].present?
      @products = Product.global_search(params[:search])
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
    @vip_lead = VipLead.new
  end

  def rent
    @products = Product.where(rent: true)
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def service
    @products = Product.joins(:category).where(categories: { name: 'Maintenance', name: 'Installations', name: 'Documents'})
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def trailers
    @products = Product.joins(:category).where(categories: { name: 'Trailers' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def luggage
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Bagagères / Utilitaires' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def water
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Nautiques' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def animals
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Transports animaliers' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def garden
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Espaces verts' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def bin
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Bennes' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def moto
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Porte-moto/quad' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def car
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Porte-voiture' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def truck
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Porte-engins' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def trail
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Remorques plateau' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def close
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Remorques fourgon' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def market
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Remorques magasin' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end



  def trailers_rent
    @products = Product.joins(:category).where(categories: { name: 'Trailers' }, rent: true)
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def luggage_rent
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Bagagères / Utilitaires' }, rent: true)
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def water_rent
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Nautiques' }, rent: true)
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def animals_rent
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Transports animaliers' }, rent: true)
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def garden_rent
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Espaces verts' }, rent: true)
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def bin_rent
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Bennes' }, rent: true)
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def moto_rent
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Porte-moto/quad' }, rent: true)
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def car_rent
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Porte-voiture' }, rent: true)
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def truck_rent
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Porte-engins' }, rent: true)
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def trail_rent
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Remorques plateau' }, rent: true)
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def close_rent
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Remorques fourgon' }, rent: true)
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def market_rent
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Trailers' }, subcategories: { name: 'Remorques magasin' }, rent: true)
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def accessories
    @products = Product.joins(:category).where(categories: { name: 'Accessories' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def wires
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Accessories' }, subcategories: { name: 'Électricité' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def lockers
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Accessories' }, subcategories: { name: 'Attelages' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def sticks
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Accessories' }, subcategories: { name: 'Essieux' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def wheels
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Accessories' }, subcategories: { name: 'Roues' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def suspensions
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Accessories' }, subcategories: { name: 'Suspensions / Renforts' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def sheets
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Accessories' }, subcategories: { name: 'Bâches' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def maintenance
    @products = Product.joins(:category).where(categories: { name: 'Maintenance' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def set
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Maintenance' }, subcategories: { name: 'Réglages' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def reinforcements
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Maintenance' }, subcategories: { name: 'Suspensions / Renforts' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def direction
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Maintenance' }, subcategories: { name: 'Aide à la manoeuvre' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def stabilisation
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Maintenance' }, subcategories: { name: 'Stabilisation' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def installations
    @products = Product.joins(:category).where(categories: { name: 'Installations' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def wire_installation
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Installations' }, subcategories: { name: 'Électricité' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def locker_installation
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Installations' }, subcategories: { name: 'Attelages' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def stick_installation
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Installations' }, subcategories: { name: 'Essieux' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def reinforcements_installation
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Installations' }, subcategories: { name: 'Suspensions / Renforts' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def direction_installation
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Installations' }, subcategories: { name: 'Aide à la manoeuvre' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def stabilisation_installation
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Installations' }, subcategories: { name: 'Stabilisation' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def documents
    @products = Product.joins(:category).where(categories: { name: 'Documents' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def plate
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Documents' }, subcategories: { name: 'Immatriculations' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def technical_control
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Documents' }, subcategories: { name: 'Contrôle technique' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def insurrance
    @products = Product.joins(:category, :subcategory).where(categories: { name: 'Documents' }, subcategories: { name: 'Assurances' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def trailers_permisb_casual_luggage
    @products = Product.joins(:category, :subcategory, :document, :usage).where(categories: { name: 'Trailers' }, subcategories: { name: 'Bagagères / Utilitaires' }, documents: { name: 'Permis B' }, usages: { name: 'Occasionnel' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def trailers_permisb_casual_water
    @products = Product.joins(:category, :subcategory, :document, :usage).where(categories: { name: 'Trailers' }, subcategories: { name: 'Nautiques' }, documents: { name: 'Permis B' }, usages: { name: 'Occasionnel' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def trailers_permisb_casual_animal
    @products = Product.joins(:category, :subcategory, :document, :usage).where(categories: { name: 'Trailers' }, subcategories: { name: 'Transports animaliers' }, documents: { name: 'Permis B' }, usages: { name: 'Occasionnel' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def trailers_permisb_casual_moto
    @products = Product.joins(:category, :subcategory, :document, :usage).where(categories: { name: 'Trailers' }, subcategories: { name: 'Porte-moto' }, documents: { name: 'Permis B' }, usages: { name: 'Occasionnel' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def trailers_permisb_casual_garden
    @products = Product.joins(:category, :subcategory, :document, :usage).where(categories: { name: 'Trailers' }, subcategories: { name: 'Espaces verts' }, documents: { name: 'Permis B' }, usages: { name: 'Occasionnel' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

  def trailers_permisb_casual_close
    @products = Product.joins(:category, :subcategory, :document, :usage).where(categories: { name: 'Trailers' }, subcategories: { name: 'Bennes' }, documents: { name: 'Permis B' }, usages: { name: 'Occasionnel' })
    @compatibility_lead = CompatibilityLead.new
    @criteria_lead = CriteriaLead.new
  end

end
