class SessionsController < ApplicationController
  skip_before_action :check_login, only: [:new, :create]

  def new
  end

  def create
    # checking_user = User.find_by(user_name: params[:user_name])
    @user = User.find_by(user_name: params[:user_name])
    # binding.pry
    # @user = checking_user.authenticate(params[:password])
    if @user.password == params[:password] && @user
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:alert] = "Incorrect username or password DUMBASS"
      redirect_to login_path
    end
  end

  def destroy
  reset_session
  redirect_to login_path
  end
end
