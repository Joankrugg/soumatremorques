# Preview all emails at http://localhost:3000/rails/mailers/vip_lead_mailer
class VipLeadMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/vip_lead_mailer/creation
  def creation
    VipLeadMailer.creation
  end

end
