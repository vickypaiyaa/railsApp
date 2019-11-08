class RailsResumesController < ApplicationController
  def index
	@resumes = RailsResume.all
  end

  def new
	@resume = RailsResume.new
  end

  def create
	@resume = RailsResume.new(resume_params)
	if @resume.save
	   redirect_to rails_resumes_path, notice: "The resume #{@resume.name} has been uploaded."
	else
	   render "new"
	end
  end

  def destroy
	@resume = RailsResume.find(params[:id])
	@resume.destroy
	redirect_to rails_resumes_path, notice: "The resume #{@resume.name} has been deleted."
  end

  private
	def resume_params
	params.require(:rails_resume).permit(:name, :attachment)
  end
end
