# Preview all emails at http://localhost:3000/rails/mailers/white_book_lead_mailer
class WhiteBookLeadMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/white_book_lead_mailer/creation
  def creation
    WhiteBookLeadMailer.creation
  end

end
