class CompatibilityLeadMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.compatibility_lead_mailer.creation.subject
  #
  def creation(compatibility_lead)
    @compatibility_lead = compatibility_lead  # Instance variable => available in view
    mail(to: @compatibility_lead.email, subject: 'Vous avez demandé un guide de compatibilité')
  end
end
