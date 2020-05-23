# frozen_string_literal: true

class Applicants::RegistrationsController < Devise::RegistrationsController
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters

  # GET /users/sign_up
  def new

    # Override Devise default behaviour and create a profile as well
    build_resource({})
    resource.build_profile
    respond_with self.resource
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u|
      u.permit(:email, :password, :password_confirmation,
         :profile_attributes => [:name, :preferred_name, :description, :birth_date, :education])
    }
  end
end
