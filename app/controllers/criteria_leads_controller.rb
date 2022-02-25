class CriteriaLeadsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @criteria_leads = CriteriaLead.all
  end

  def new
    @criteria_lead = CriteriaLead.new
  end

  def create
    @criteria_lead = CriteriaLead.new(criteria_lead_params)
    if @criteria_lead.save
      CriteriaLeadMailer.creation(@criteria_lead).deliver_now
      redirect_to root_path
    else
    render :new
    end

  end

  def destroy
  end

  private

  def criteria_lead_params
    params.require(:criteria_lead).permit(:email, :link)
  end
end
