# Preview all emails at http://localhost:3000/rails/mailers/compatibility_lead_mailer
class CompatibilityLeadMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/compatibility_lead_mailer/creation
  def creation
    CompatibilityLeadMailer.creation
  end

end
