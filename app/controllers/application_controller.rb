class ApplicationController < ActionController::Base
  before_action :check_login

  private

  def check_login
    binding.pry
    if !user_is_signed_in
      flash[:alert] = "Need to sign in"
      redirect_to login_path
    end
  end

  def user_is_signed_in
    binding.pry
    if params[:id]
      session[:user_id] == params[:id].to_i && @user = User.find(session[:user_id])
    else
      @user = User.find(session[:user_id])
    end
  end
end
