class ProjectmembershipsController < ApplicationController
  before_action :set_projectmembership, only: [:show, :edit, :update, :destroy]

  # GET /projectmemberships
  # GET /projectmemberships.json
  def index
    @projectmemberships = Projectmembership.all
  end

  # GET /projectmemberships/1
  # GET /projectmemberships/1.json
  def show
    @projectmembership = Projectmembership.find(params[:id])
  end

  # GET /projectmemberships/new
  def new
    @projectmembership = Projectmembership.new
  end

  # GET /projectmemberships/1/edit
  def edit
  end

  # POST /projectmemberships
  # POST /projectmemberships.json
  def create
    @projectmembership = Projectmembership.new(projectmembership_params)
    
   if @projectmembership.save
        render json: {status: :success, projectmembership: @projectmembership}
      else
        render json: {status: :failed, projectmembership: @projectmembership}
      end
  end

  # PATCH/PUT /projectmemberships/1
  # PATCH/PUT /projectmemberships/1.json
  def update
    respond_to do |format|
      if @projectmembership.update(projectmembership_params)
        format.html { redirect_to @projectmembership, notice: 'Projectmembership was successfully updated.' }
        format.json { render :show, status: :ok, location: @projectmembership }
      else
        format.html { render :edit }
        format.json { render json: @projectmembership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projectmemberships/1
  # DELETE /projectmemberships/1.json
  def destroy
    @projectmembership.destroy
    respond_to do |format|
      format.html { redirect_to projectmemberships_url, notice: 'Projectmembership was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projectmembership
      @projectmembership = Projectmembership.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projectmembership_params
      params.require(:projectmembership).permit(:user_id, :project_id, :pmember_id)
    end
end
