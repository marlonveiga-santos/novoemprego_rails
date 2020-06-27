class JobsController < ApplicationController
  before_action :define_current, only: [:index, :new, :create, :destroy]
  def index 
  end

  def new 
    @job = @headhunter.jobs.build
  end

  def create 
    @job = @headhunter.jobs.build(jobs_params)
    if @job.save 
      redirect_to root_path 
    else 
      render :new
    end
  end

  def destroy 
    @job = @headhunter.jobs.find(params[:id])
    @job.destroy
    redirect_to workspaces_path
  end

  private 

  def jobs_params 
    params.require(:job).permit(:title, :description, :habilities, :salary, :level, :end_date, :address, :note)
  end
  def define_current
    @headhunter = current_headhunter
  end
end

