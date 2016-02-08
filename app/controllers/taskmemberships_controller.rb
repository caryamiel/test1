class TaskmembershipsController < ApplicationController
  before_action :set_taskmembership, only: [:show, :edit, :update, :destroy]

  # GET /taskmemberships
  # GET /taskmemberships.json
  def index
    @taskmemberships = Taskmembership.all
  end

  # GET /taskmemberships/1
  # GET /taskmemberships/1.json
  def show
  end

  # GET /taskmemberships/new
  def new
    @taskmembership = Taskmembership.new
  end

  # GET /taskmemberships/1/edit
  def edit
  end

  # POST /taskmemberships
  # POST /taskmemberships.json
  def create
    @taskmembership = Taskmembership.new(taskmembership_params)
      if @taskmembership.save
        render json:{status: :success, taskmembership: @taskmembership}
      else
        render json:{status: :failed, taskmembership: @taskmembership}
      end
  end

  # PATCH/PUT /taskmemberships/1
  # PATCH/PUT /taskmemberships/1.json
  def update
      if @taskmembership.save
        render json:{status: :success, taskmembership: @taskmembership}
      else
        render json:{status: :failed, taskmembership: @taskmembership}
      end
  end

  # DELETE /taskmemberships/1
  # DELETE /taskmemberships/1.json
  def destroy
    @taskmembership.destroy
    respond_to do |format|
      format.html { redirect_to taskmemberships_url, notice: 'Taskmembership was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taskmembership
      @taskmembership = Taskmembership.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taskmembership_params
      params.require(:taskmembership).permit(:user_id, :tmember_id, :task_id)
    end
end
