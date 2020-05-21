class ProfilesController < ApplicationController
  def show
    @applicant = current_applicant
  end

  def edit
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
    params.require(:profile).permit(:name, :preferred_name, :description, :birth_date)
end

end

