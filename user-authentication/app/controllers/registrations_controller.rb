class RegistrationsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:email, :password))
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "User was successfully created"
      redirect_to "/"
    else
      render :new
    end
  end

end
