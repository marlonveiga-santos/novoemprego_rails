class HomeController < ApplicationController
  def index
    @applicant = current_applicant
  end
end