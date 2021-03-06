class UsersController < ApplicationController

  before_filter :authorize_admin

def new
  @user = User.new
end

def create
  @user = User.new(user_params)
  if @user.save
    session[:user_id] = @user.id
    redirect_to root_path
    flash[:notice] = "New user created."
  else
    render "new"
  end
end

private

  def user_params
    params.require(:user).permit(:user_name, :password, :password_confirmation)
  end

end
