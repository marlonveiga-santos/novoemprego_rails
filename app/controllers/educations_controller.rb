class EducationsController < ApplicationController
  before_action :define_current
  
  def index
    @educations = current_applicant.profile.educations.where(params[:id])
  end

  def new
    @education = Education.new
  end

  def create
    @education = @applicant.profile.educations.create(permitted_params)
    if @education.save
      redirect_to educations_path
    else
      flash[:alert] = "Ocorreu um erro."
      render :new
    end
  end
  
  def edit
    @education = Education.find(params[:id])
  end

  def update
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
    @education = @applicant.profile.educations.find(params[:id])
    @education.destroy
    redirect_to educations_path
end

  private

  def permitted_params
    params.require(:education).permit(:institution, :course, :start_date, 
                                      :end_date, :level)
  end

  def define_current
    @applicant = current_applicant
  end
end