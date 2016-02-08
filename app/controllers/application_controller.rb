class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
  skip_before_filter :verify_authenticity_token
  before_filter :set_access_control_headers, :cors_preflight   

  def cors_preflight
    if request.method == "OPTIONS"      
      respond_to do |format|
        format.json { render json:{ :status => "success" } , status: :ok }
      end
    end
  end

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST,GET,PATCH,PUT,OPTIONS,DELETE'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Content-Type'
  end
  def current_user
    User.where(id: session[:user_id]).first
  end
  helper_method :current_user
end


=begin

headers['Access-Control-Allow-Origin'] = '*'
headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
headers['Access-Control-Request-Method'] = '*'
headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'=end
=end

