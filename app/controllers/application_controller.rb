class ApplicationController < ActionController::Base
  before_action :check_login

  private

  def check_login
    if !user_is_signed_in
      flash[:alert] = "Need to sign in"
      redirect_to login_path
    end
  end

  def user_is_signed_in
    if params[:user_id]
      # binding.pry
        session[:user_id] == params[:user_id].to_i && @user = User.find(session[:user_id])
    elsif params[:id]
      # binding.pry
      session[:user_id] == params[:id].to_i && @user = User.find(session[:user_id])
    else
      # binding.pry
      @user = User.find(session[:user_id])
    end
  end
end
