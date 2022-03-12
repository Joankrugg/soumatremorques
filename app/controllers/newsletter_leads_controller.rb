class NewsletterLeadsController < ApplicationController
skip_before_action :authenticate_user!
  def index
    @newsletter_leads = NewsletterLead.all
  end

  def new
    @newsletter_lead = NewsletterLead.new
  end

  def create
    @newsletter_lead = NewsletterLead.new(newsletter_lead_params)
    if @newsletter_lead.save
      NewsletterLeadMailer.creation(@newsletter_lead).deliver_now
      redirect_to root_path
    else
    render :new
    end

  end

  def destroy
  end

  private

  def newsletter_lead_params
    params.require(:newsletter_lead).permit(:email)
  end
end
