class ProfilesController < ApplicationController
  def show
    @applicant = current_applicant
  end
end

