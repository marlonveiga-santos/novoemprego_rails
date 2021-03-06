class ProfilesController < ApplicationController
  before_action :define_current, only: [:show, :edit]
  before_action :jobs_list, only: [:show]

  def show
    @percentage = @applicant.profile.completeness
    unless @percentage == '100 %'
      redirect_to edit_profile_path(@applicant)
      flash[:alert] = "Perfil incompleto. \n Por favor complete-o."
    end
  end

  def edit
    @percentage = current_applicant.profile.completeness
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Applicant.find(params[:id]).profile
    
    if @profile.update(profile_params)
     redirect_to @profile
      else
     render :edit
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :preferred_name, :gender, :description, 
                                    :birth_date, :avatar, 
                                    :educations_attributes => [],
                                    :professions_attributes => [])
  end

  def define_current
    @applicant = current_applicant
  end

  def jobs_list 
    @jobs = Job.all
  end

end


