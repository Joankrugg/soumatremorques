class QuotationsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @quotations = Quotation.all
  end

  def new
    @quotation = Quotation.new
  end

  def create
    @quotation = Quotation.new(quotation_params)
    @product = Product.find(params[:product_id])
    @quotation.product = @product
    if @quotation.save
      redirect_to root_path
    else
    render :new
    end
  end

  private

  def quotation_params
    params.require(:quotation).permit(:name, :surname, :email, :title_id, :purpose_id)
  end
end
