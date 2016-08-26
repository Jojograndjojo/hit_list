class InterestsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    @company = Company.find(params[:company_id])
    @interest = Interest.new
    @interest.user_id = current_user.id
    @interest.company_id = @company.id
    @interest.save
    redirect_to company_path(@company.id)
  end

end
