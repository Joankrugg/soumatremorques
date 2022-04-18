class ReservationMailer < ApplicationMailer
  def creation(reservation)
    @reservation = reservation  # Instance variable => available in view
    mail(to: @reservation.mail, subject: "Vous avez réservé chez nous")
  end
end
