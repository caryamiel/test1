class ProjectlogsController < ApplicationController
  before_action :set_projectlog, only: [:show, :edit, :update, :destroy]

  # GET /projectlogs
  # GET /projectlogs.json
  def index
    @projectlogs = Projectlog.all
  end

  # GET /projectlogs/1
  # GET /projectlogs/1.json
  def show
  end

  # GET /projectlogs/new
  def new
    @projectlog = Projectlog.new
  end

  # GET /projectlogs/1/edit
  def edit
  end

  # POST /projectlogs
  # POST /projectlogs.json
  def create
    @projectlog = Projectlog.new(projectlog_params)

    respond_to do |format|
      if @projectlog.save
        format.html { redirect_to @projectlog, notice: 'Projectlog was successfully created.' }
        format.json { render :show, status: :created, location: @projectlog }
      else
        format.html { render :new }
        format.json { render json: @projectlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projectlogs/1
  # PATCH/PUT /projectlogs/1.json
  def update
    respond_to do |format|
      if @projectlog.update(projectlog_params)
        format.html { redirect_to @projectlog, notice: 'Projectlog was successfully updated.' }
        format.json { render :show, status: :ok, location: @projectlog }
      else
        format.html { render :edit }
        format.json { render json: @projectlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projectlogs/1
  # DELETE /projectlogs/1.json
  def destroy
    @projectlog.destroy
    respond_to do |format|
      format.html { redirect_to projectlogs_url, notice: 'Projectlog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projectlog
      @projectlog = Projectlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projectlog_params
      params.require(:projectlog).permit(:user_id, :action, :parameter, :project_id)
    end
end
