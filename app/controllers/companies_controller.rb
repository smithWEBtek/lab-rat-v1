class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  def index
    @companies = Company.all 
     respond_to do |format|
      format.html { render :index }
      format.json { render json: @companies }
    end
  end

  def show
     respond_to do |format|
      format.html { render :show }
      format.json { render json: @company }
    end
  end

  def new
    @company = Company.new
  end
  
  def edit
  end

  def update
    @company.update(company_params)
    if @company.save
      redirect_to company_path(@company), message: "Company updated."
    else
      render :edit, message: "Company NOT updated, please try again."
    end
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to company_path(@company), message: "Company created."
    else
      render :new, message: "Company NOT created, please try again."
    end
  end

  def destroy
    @company.delete
    redirect_to companies_path
  end

  private
    def set_company
      @company = Company.find_by_id(params[:id])
    end

    def company_params
      params.require(:company).permit(:name, :about, :url, :city, :state)
    end
end
