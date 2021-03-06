class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.create(company_params)
    redirect_to companies_path
  end

  def show
    @company = Company.find(params[:id])
    @interests = Interest.where(company_id: @company.id)
    @interest = Interest.where(company_id: @company.id, user_id: current_user.id).first
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    @company.update(company_params)
    redirect_to(company_path(@company))
  end

  private

  def company_params
    params.require(:company).permit(:name, :location, :project, :interesting_thing, :technology, :person_working_there)
  end
end
