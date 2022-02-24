class VipLeadMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.vip_lead_mailer.creation.subject
  #
  def creation(vip_lead)
    @vip_lead = vip_lead  # Instance variable => available in view

    mail(to: @vip_lead.email, subject: 'Vous souhaitez Être recontacter')
  end
end
