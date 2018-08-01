class SessionsController < ApplicationController
  skip_before_action :check_login, only: [:new, :create]

  def hello
    if params[:user_id] == "" || params[:user_id] == nil
      redirect_to login_path
  end

  def new
    @user = User.new
  end

  def create
    if params[:user_id] == "" || params[:user_id] == nil
      redirect_to login_path
    else
      session[:user_id] = params[:user_id]
      redirect_to root_path
    end
  end

  def destroy
    if session[:user_id] == nil || session[:user_id] == ""
      nil
    else
      session.delete :user_id
    end
  end
end
