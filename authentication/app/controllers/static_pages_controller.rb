class StaticPagesController < ApplicationController

  def index
    @user = User.all
  end

end
