class NewsletterLeadMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_lead_mailer.creation.subject
  #
  def creation(newsletter_lead)
    @newsletter_lead = newsletter_lead  # Instance variable => available in view
    mail(to: @newsletter_lead.email, subject: "Vous recevrez à partir d'aujourd'hui, notre newsletter")
  end
end
