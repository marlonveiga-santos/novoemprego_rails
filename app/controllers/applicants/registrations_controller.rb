# frozen_string_literal: true

class Applicants::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  # GET /users/sign_up
  def new

    # Override Devise default behaviour and create a profile as well
    build_resource({})
    resource.build_applicant_profile
    respond_with self.resource
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u|
      u.permit(:email, :password, :password_confirmation, :applicant_profile_attributes => [:name, :preferred_name, :description])
    }
  end
end
