class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :allowed?

private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def is_admin
    current_user.isadmin? if current_user
  end

  helper_method :is_admin

  def authorize
    redirect_to login_url if current_user.nil?
  end

  helper_method :authorize

  def current_permission
    @current_permisson ||= Permission.new(current_user)
  end

  def allowed?
    if !current_permission.allow?(params[:controller], params[:action])
      redirect_to root_url, notice: "Not authorized."
    end
  end
  
end
