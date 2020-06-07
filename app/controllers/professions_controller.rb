class ProfessionsController < ApplicationController
  before_action :define_current
  
  def index
    @professions = current_applicant.profile.professions.where(params[:id])
  end
  
  def show
    @profession = Profession.find(params[:id])
  end

  def new
    @profession = Profession.new
  end

  def edit
    @profession = Profession.find(params[:id])
  end

  def create
    @profession = @applicant.profile.professions.create(permitted_params)
    if @profession.save
      redirect_to professions_path
      else
        flash[:alert] = "Ocorreu um erro."
        render :new
      end
  end

  def update
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
    @profession = @applicant.profile.professions.find(params[:id])
    @profession.destroy
    redirect_to professions_path
end

  private

  def permitted_params
    params.require(:profession).permit(:company, :job_role, :start_date, 
                                       :end_date, :salary, :attributions, 
                                       :job_area)
  end

  def define_current
    @applicant = current_applicant
  end

end