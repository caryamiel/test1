class JobpostsController < ApplicationController
  before_action :set_jobpost, only: [:show, :edit, :update, :destroy]

  # GET /jobposts
  # GET /jobposts.json
  def index
    @jobposts = Jobpost.all
  end

  # GET /jobposts/1
  # GET /jobposts/1.json
  def show
    @jobpost = Jobpost.find(params[:id])
  end

  # GET /jobposts/new
  def new
    @jobpost = Jobpost.new
  end

  # GET /jobposts/1/edit
  def edit
  end

  # POST /jobposts
  # POST /jobposts.json
  def create
    @jobpost = Jobpost.new(jobpost_params)
      if @jobpost.save
        render json: {status: :success, jobpost: @jobpost}
      else
        render json: {status: :failed, jobpost: @jobpost}
      end
  end

  # PATCH/PUT /jobposts/1
  # PATCH/PUT /jobposts/1.json
  def update
      if @jobpost.update(jobpost_params)
        render json: {status: :success, jobpost: @jobpost}
      else
        render json: {status: :failed, jobpost: @jobpost}
      end
  end

  # DELETE /jobposts/1
  # DELETE /jobposts/1.json
  def destroy
    @jobpost.destroy
    respond_to do |format|
      format.html { redirect_to jobposts_url, notice: 'Jobpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobpost
      @jobpost = Jobpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jobpost_params
      params.require(:jobpost).permit(:name, :user_id, :topic)
    end
end
