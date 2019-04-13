class ProjectsController < ApplicationController
  before_action :set_project, only: [:show]

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find_by(key_hash: params[:key_hash])
      return render file: "#{Rails.root}/public/404", status: :not_found unless @project
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:display_name)
    end
end
