class SubtasksController < ApplicationController
  before_action :set_subtask, only: [:show, :edit, :update, :destroy]
  before_action :set_task, only: [:create]
  skip_before_filter :verify_authenticity_token
  # GET /subtasks
  # GET /subtasks.json
  def index
    @subtasks = Subtask.all
    render json: @subtasks
  end

  # GET /subtasks/1
  # GET /subtasks/1.json
  def show
     @subtask = Subtask.find(params[:id])
     render json: @subtask
  end

  # GET /subtasks/new
  def new
    @subtask = Subtask.new
  end

  # GET /subtasks/1/edit
  def edit
  end

  # POST /subtasks
  # POST /subtasks.json
  def create
    @subtask = Subtask.new(subtask_params)
    @subtask.task_id = @task.id
      if @subtask.save
        render json: {status: :success, subtask: @subtask}
      else
        render json: {status: :failsed, subtask: @subtask}
      end
  end

  # PATCH/PUT /subtasks/1
  # PATCH/PUT /subtasks/1.json
  def update
      if @subtask.update(subtask_params)
        render json: {status: :success, subtask: @subtask}
      else
        render json: {status: :failsed, subtask: @subtask}
      end
  end

  # DELETE /subtasks/1
  # DELETE /subtasks/1.json
  def destroy
    @subtask.destroy
    respond_to do |format|
      format.html { redirect_to subtasks_url, notice: 'Subtask was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subtask
      @subtask = Subtask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subtask_params
      params.require(:subtask).permit(:name, :subtask_confirmation)
    end
    def set_project
      @project = Project.find(params[:project_id])
    end
    def set_task
      @task = Task.find(params[:task_id])
    end
end
