class WallsController < ApplicationController
  def index
    @walls = Wall.all
  end

  def new
    @wall = Wall.new
  end

  def create
    @wall = Wall.new(wall_params)
    @wall.user = current_user
    if @wall.save
      redirect_to wall_path(@wall)
    else
      flash[:notice] = @wall.errors.full_messages.join(", ")
      render :new
    end
  end

  def show
    @wall = Wall.find(params[:id])
  end

  def edit
  end

  private

  def wall_params
    params.require(:wall).permit(:wall_name, :length, :height)
  end
end
