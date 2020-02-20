class UsersController < ApplicationController

  def show
    params.require(:user).permit(:image)
  end 

  def logout
  end

  def card
  end

end
