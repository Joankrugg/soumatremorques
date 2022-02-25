class CriteriaLeadMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.criterie_lead_mailer.creation.subject
  #
  def creation(criteria_lead)
    @criteria_lead = criteria_lead  # Instance variable => available in view
    mail(to: @criteria_lead.email, subject: 'Vous souhaitez conserver vos critères de recherche')
  end
end
