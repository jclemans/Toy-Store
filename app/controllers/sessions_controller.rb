class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_user_name(params[:user_name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Logged in!"
      redirect_to root_path
    else
      flash.now.alert = "Email or password is invalid."
    end
  end
end
