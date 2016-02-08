class SessionsController < ApplicationController
skip_before_filter :verify_authenticity_token


 def new
 end
 def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render json: {status: :success , user: user}     
    else
      render json: {status: "email not found or mismatch!"}
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
