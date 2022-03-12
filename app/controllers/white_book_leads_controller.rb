class WhiteBookLeadsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @white_book_leads = WhiteBookLead.all
  end

  def new
    @white_book_lead = WhiteBookLead.new
  end

  def create
    @white_book_lead = WhiteBookLead.new(white_book_lead_params)
    if @white_book_lead.save
      WhiteBookLeadMailer.creation(@white_book_lead).deliver_now
      redirect_to root_path
    else
    render :new
    end

  end

  def destroy
  end

  private

  def white_book_lead_params
    params.require(:white_book_lead).permit(:email)
  end
end
