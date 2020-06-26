class CompaniesController < ApplicationController
  def new
    @headhunter = current_headhunter
    @company = Company.new
    @domain = @headhunter.email.split("@").last
  end

  def create
    @company = Company.new(company_params)

    if @company.save
      flash[:notice] = "Tudo certo."
      current_headhunter.update(:company_id => @company.id)
      redirect_to headhunter_root_path
    else
      flash[:alert] = "Ocorreu um erro."
      render :new 
    end
  end

  private 

  def company_params
    params.require(:company).permit(:name, :address, :domain, :cnpj)
  end
end