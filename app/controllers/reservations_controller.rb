class ReservationsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @product = Product.find(params[:product_id])
    @reservation.product = @product
    ReservationMailer.creation(@reservation).deliver_now
    if @reservation.save
      redirect_to root_path
    else
    render :new
    end

  end

  def destroy
  end

  private

  def reservation_params
    params.require(:reservation).permit(:name, :surname, :firm, :mail, :siret, :account)
  end
end
