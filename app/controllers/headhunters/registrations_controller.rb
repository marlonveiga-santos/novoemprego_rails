# frozen_string_literal: true

class Headhunters::RegistrationsController < Devise::RegistrationsController
  include Accessible
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters
  skip_before_action :check_user, except: [:new, :create]

  # GET /users/sign_up
  def new

    # Override Devise default behaviour and create a workspace as well
    build_resource({})
    resource.build_workspace
    respond_with self.resource
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u|
      u.permit(:email, :password, :password_confirmation,
               :workspace_attributes => [:name, :preferred_name, :gender, 
               :about, :birth_date, :cpf])
    }
  end
end
