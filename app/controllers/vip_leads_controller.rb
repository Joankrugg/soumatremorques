class VipLeadsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @vip_leads = VipLead.all
  end

  def new
    @vip_lead = VipLead.new
  end

  def create
    @vip_lead = VipLead.new(vip_lead_params)
    if @vip_lead.save
      VipLeadMailer.creation(@vip_lead).deliver_now
      redirect_to root_path
    else
    render :new
    end

  end

  def destroy
  end

  private

  def vip_lead_params
    params.require(:vip_lead).permit(:email)
  end
end
