class ProfessionsController < ApplicationController
  def index
    @applicant = current_applicant
    @professions = current_applicant.profile.professions.where(params[:id])
  end
  
  def show
    @applicant = current_applicant
    @profession = Profession.find(params[:id])
  end

  def new
    @applicant = current_applicant
    @profession = Profession.new
  end

  def edit
    @applicant = current_applicant
    @profession = Profession.find(params[:id])
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
    params.require(:profession).permit(:company, :job_role, :start_date, 
                                       :end_date, :salary, :attributions, 
                                       :job_area)
  end

end