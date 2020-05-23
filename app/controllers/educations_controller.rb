class EducationsController < ApplicationController
  def index
    @applicant = current_applicant
    @educations = Education.all
  end
  
  def show
    @applicant = current_applicant
    @education = Education.find(params[:id])
  end

  def new
    @applicant = current_applicant
    @types = {"Ensino Fundamental" => "1","Ensino Médio" => "2",
     "Ensino Superior" => "3", "Curso Técnico" => "4", "Outro Tipo" => "5"}
    @education = Education.new
  end

  def edit
    @applicant = current_applicant
    @education = Education.find(params[:id])
    @types = {"Ensino Fundamental" => "1","Ensino Médio" => "2",
      "Ensino Superior" => "3", "Curso Técnico" => "4", "Outro Tipo" => "5"}
  end

  def create
    @applicant = current_applicant
    @education = @applicant.profile.educations.create(permitted_params)
    if @education.save
      redirect_to educations_path
      else
        flash[:alert] = "Ocorreu um erro."
        render :new
      end
  end

  def update
    @applicant = current_applicant
    @education = @applicant.profile.educations.find(params[:id])
    @education.update(permitted_params)
    if @education.save
      redirect_to educations_path
      else
        flash[:alert] = "Ocorreu um erro."
        render :edit
      end
  end

  def destroy
    @applicant = current_applicant
    @education = @applicant.profile.educations.find(params[:id])
    @education.destroy
    redirect_to educations_path
end

  private

  def permitted_params
    params.require(:education).permit(:institution, :course, :start_date, :end_date, :level)
  end
end