class SessionsController < ApplicationController
  skip_before_action :check_login, only: [:new, :create]

  def new
  end

  def create

    checking_user = User.find_by(user_name: params[:user_name])
    # @user = User.find_by(user_name: params[:user_name])
    # binding.pry
    if @user = checking_user.authenticate(params[:password])
      binding.pry
    # if @user != nil && @user.password == params[:password]
      # binding.pry
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
