# Preview all emails at http://localhost:3000/rails/mailers/criterie_lead_mailer
class CriterieLeadMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/criterie_lead_mailer/creation
  def creation
    CriterieLeadMailer.creation
  end

end
