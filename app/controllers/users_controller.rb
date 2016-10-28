class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @walls = @user.walls
  end
end
