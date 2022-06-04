class WhiteBookLeadMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.white_book_lead_mailer.creation.subject
  #
  def creation(white_book_lead)
    @white_book_lead = white_book_lead  # Instance variable => available in view
    mail(to: @white_book_lead.email, subject: "Vous souhaitiez recevoir notre livre blanc")
  end
end
