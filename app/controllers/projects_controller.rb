class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:create]
  skip_before_filter :verify_authenticity_token

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
    render json: @projects
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])
  end
  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  def sendAttachment
    @text = params[:text]
    @email = params[:email]
       AttachmentMailer.send_attachment(@project).deliver
    render json: @text
  end
  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
    @project.user_id = @user.id
      if @project.save
        render json: {status: :success, project: @project}
      else
        render json: {status: :failed, project: @project}
      end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
      if @project.update(project_params)
        render json: {status: :success, project: @project}
      else
        render json: {status: :failed, project: @project}
      end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name,:project_status, :descriptions, :startDate, :dueDate, :project_confirm, :project_color,:admin)
    end  
     def set_user
      @user = User.find(params[:user_id])
    end
end

