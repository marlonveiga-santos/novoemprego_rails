class CompaniesController < ApplicationController
  def new
    @headhunter = current_headhunter
  end

  def create 
  end
end