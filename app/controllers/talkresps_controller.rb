class TalkrespsController < ApplicationController
  before_action :set_talkresp, only: [:show, :edit, :update, :destroy]

  # GET /talkresps
  # GET /talkresps.json
  def index
    @talkresps = Talkresps.all
  end

  # GET /talkresps/1
  # GET /talkresps/1.json
  def show
    @talkresp = Talkresp.find(params[:id])
  end

  # GET /talkresps/new
  def new
    @talkresp = Talkresp.new
  end

  # GET /talkresps/1/edit
  def edit
  end

  # POST /talkresps
  # POST /talkresps.json
  def create
    @talkresp = Talkresp.new(talkresp_params)

    respond_to do |format|
      if @talkresp.save
        format.html { redirect_to @talkresp, notice: 'Talkresp was successfully created.' }
        format.json { render :show, status: :created, location: @talkresp }
      else
        format.html { render :new }
        format.json { render json: @talkresp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /talkresps/1
  # PATCH/PUT /talkresps/1.json
  def update
    respond_to do |format|
      if @talkresp.update(talkresp_params)
        format.html { redirect_to @talkresp, notice: 'Talkresp was successfully updated.' }
        format.json { render :show, status: :ok, location: @talkresp }
      else
        format.html { render :edit }
        format.json { render json: @talkresp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /talkresps/1
  # DELETE /talkresps/1.json
  def destroy
    @talkresp.destroy
    respond_to do |format|
      format.html { redirect_to talkresps_url, notice: 'Talkresp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_talkresp
      @talkresp = Talkresp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def talkresp_params
      params.require(:talkresp).permit(:user_id, :projtalk_id, :talkcontent)
    end
end
