class WorkspacesController  < ApplicationController
  before_action :define_current, only: [:show, :edit]

  def show 
    @domain = @headhunter.email.split("@").last
    @comp = Company.where("domain like ?", "%#{@domain}%").take
    @checker = @comp.nil?
    
  end

  private

  def workspace_params
    params.require(:workspace).permit(:name, :preferred_name, :gender, 
                                     :about, :birth_date, :cpf)
  end

  def define_current
    @headhunter = current_headhunter
  end
end