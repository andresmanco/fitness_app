class SessionsController < ApplicationController
  skip_before_action :check_login, only: [:new, :create]

  def new
  end

  def create

    checking_user = User.find_by(user_name: params[:user_name])
    if checking_user != nil
      binding.pry
      @user = checking_user.authenticate(params[:password])
    end
    if @user != false
      binding.pry
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      binding.pry
      flash[:alert] = "Incorrect username or password DUMBASS"
      redirect_to login_path
    end
  end

  def destroy
  reset_session
  redirect_to login_path
  end
end
