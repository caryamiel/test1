class FriendshipsController < ApplicationController
  before_action :set_friendship, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:create]
  # GET /friendships
  # GET /friendships.json
  def index
    @friendships = Friendship.all
    render json: @friendships
  end

  # GET /friendships/1
  # GET /friendships/1.json
  def show
    @friendship = Friendship.find(params[:id])
  end

  # GET /friendships/new
  def new
    @friendship = Friendship.new
  end

  # GET /friendships/1/edit
  def edit
  end

  # POST /friendships
  # POST /friendships.json
  def create
    @friendship = Friendship.new(friendship_params)
    @friendship.user_id = @user.id
  
      if @friendship.save
        render json: {status: :success, friendship: @friendship}
      else
        render json: {status: :failed, friendship: @friendship}
      end 
  end

  # PATCH/PUT /friendships/1
  # PATCH/PUT /friendships/1.json
  def update
      if @friendship.update(approved: true)
        render json: {status: :success, friendship: @friendship}
      else
        render json: {status: :failed, friendship: @friendship}
      end
  end

  # DELETE /friendships/1
  # DELETE /friendships/1.json
  def destroy
    @friendship.destroy
    respond_to do |format|
      format.html { redirect_to friendships_url, notice: 'Friendship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friendship
      @friendship = Friendship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def friendship_params
      params.require(:friendship).permit(:user_id, :friend_id, :approved)
    end
    def set_user
      @user = User.find(params[:user_id])
    end
end
