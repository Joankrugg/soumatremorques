class CompatibilityLeadsController < ApplicationController
  def index
    @compatibility_leads = CompatibilityLead.all
  end

  def new
    @compatibility_lead = CompatibilityLead.new
  end

  def create
    @compatibility_lead = CompatibilityLead.new(compatibility_lead_params)
    if @compatibility_lead.save
      CompatibilityLeadMailer.creation(@compatibility_lead).deliver_now
      redirect_to root_path
    else
    render :new
    end

  end

  def destroy
  end

  private

  def compatibility_lead_params
    params.require(:compatibility_lead).permit(:email)
  end
end
