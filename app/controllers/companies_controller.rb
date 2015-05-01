class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end
  def new
    @company = Company.new
  end

  def create
    @company = Company.new( company_params )
      if @company.save
        flash[:notice] = "Company successfully added"
      else
        flash[:notice] = "Company not successfully added"
      end
      redirect_to companies_path
  end

  def update
    @user = User.find( params[:email] )
    @user.admin = "true"
    if @user.save
      flash[:notice] = "Administrator created"
    else
      flash[:notice] = "Administrator not created"
      render :new
    end
    redirect_to companies_path
  end

private

  def company_params
    params.require( :company ).permit( :company )
  end

end
