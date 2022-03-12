# Preview all emails at http://localhost:3000/rails/mailers/newsletter_lead_mailer
class NewsletterLeadMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/newsletter_lead_mailer/creation
  def creation
    NewsletterLeadMailer.creation
  end

end
