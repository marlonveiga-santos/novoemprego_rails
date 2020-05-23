class ProfessionsController < ApplicationController
  def index
    @applicant = current_applicant
    @professions = Profession.all
    @types = graduation_types
  end
  
  def show
    @applicant = current_applicant
    @profession = Profession.find(params[:id])
  end

  def new
    @applicant = current_applicant
    @types = graduation_types
    @profession = Profession.new
  end

  def edit
    @applicant = current_applicant
    @profession = Profession.find(params[:id])
    @types = graduation_types
  end

  def create
    @applicant = current_applicant
    @profession = @applicant.profile.professions.create(permitted_params)
    if @profession.save
      redirect_to professions_path
      else
        flash[:alert] = "Ocorreu um erro."
        render :new
      end
  end

  def update
    @applicant = current_applicant
    @profession = @applicant.profile.professions.find(params[:id])
    @profession.update(permitted_params)
    if @profession.save
      redirect_to professions_path
      else
        flash[:alert] = "Ocorreu um erro."
        render :edit
      end
  end

  def destroy
    @applicant = current_applicant
    @profession = @applicant.profile.professions.find(params[:id])
    @profession.destroy
    redirect_to professions_path
end

  private

  def permitted_params
    params.require(:profession).permit(:company, :job_role, :start_date, :end_date, :salary, :attributions, :job_area)
  end

  def graduation_types
    {"Informática/T.I." => "0", "Contabilidade" => "1","Recursos Humanos" => "2",
      "Área da Saúde" => "3", "Terceiro Setor/Voluntariado" => "4", "Prestação de serviços" => "5", "Outro Tipo" => "6"}
  end
end