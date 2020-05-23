class ProfilesController < ApplicationController
  def show
    @applicant = current_applicant
    @percentage = current_applicant.profile.completeness
    unless @percentage == '100 %'
      redirect_to edit_profile_path(@applicant)
      flash[:alert] = "Perfil incompleto. \n Por favor complete-o."
    end
  end

  def edit
    @applicant = current_applicant
    @genders = genders
    @percentage = current_applicant.profile.completeness
    @profile = current_applicant.profile
  end

  def update
    @profile = current_applicant.profile
    @profile.update(profile_params)
    if @profile.save
     redirect_to @profile
      else
     render :edit
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :preferred_name, :gender, :description, :birth_date, :avatar, 
     :educations_attributes => [:institution, :course, :start_date, :end_date, :level],
     :professions_attributes => [:company, :job_role, :start_date, :end_date, :salary, :attributions, :job_area])
  end

  def genders
    %w(Male Female Non-binary Not\ informed )
  end

end


