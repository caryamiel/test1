class ProjtalksController < ApplicationController
  before_action :set_projtalk, only: [:show, :edit, :update, :destroy]

  # GET /projtalks
  # GET /projtalks.json
  def index
    @projtalks = Projtalk.all
  end

  # GET /projtalks/1
  # GET /projtalks/1.json
  def show
    @projtalk = Projtalk.find(params[:id])
  end

  # GET /projtalks/new
  def new
    @projtalk = Projtalk.new
  end

  # GET /projtalks/1/edit
  def edit
  end

  # POST /projtalks
  # POST /projtalks.json
  def create
    @projtalk = Projtalk.new(projtalk_params)
      if @projtalk.save
 render json: {status: :success, projtalk: @projtalk}
      else
        render json: {status: :failed, project: @projtalk}
      end
  
  end

  # PATCH/PUT /projtalks/1
  # PATCH/PUT /projtalks/1.json
  def update
      if @projtalk.update(projtalk_params)
 render json: {status: :success, projtalk: @projtalk}
      else
        render json: {status: :failed, project: @projtalk}      end
  end

  # DELETE /projtalks/1
  # DELETE /projtalks/1.json
  def destroy
    @projtalk.destroy
    respond_to do |format|
      format.html { redirect_to projtalks_url, notice: 'Projtalk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projtalk
      @projtalk = Projtalk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projtalk_params
      params.require(:projtalk).permit(:user_id, :project_id, :name)
    end
end
