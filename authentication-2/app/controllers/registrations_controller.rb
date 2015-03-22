class RegistrationsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:email, :password))
    if @user.save
      session[:notice] = @user.id
      flash[:notice] = "User accounted created!"
      redirect_to "/"
    else
      render :new
    end
  end

end
