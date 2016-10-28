class WallsController < ApplicationController
  def index
    @walls = Wall.all
  end

  def new
    @wall = Wall.new
  end

  def create
    @wall = Wall.create(wall_params)
    @wall.user_id = params[:user_id]
    # @user = @wall.user
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
    @wall = Wall.find(params[:id])
  end

  def update
    @wall = Wall.find(params[:id])
    if @wall.update_attributes(wall_params)
      flash[:notice] = "Wall was succesfully edited."
      redirect_to wall_path(@wall)
    else
      flash[:notice] = @wall.errors.full_messages.join(", ")
      render :edit
    end
  end

  def destroy
    @wall = Wall.find(params[:format])
    @wall.destroy
    flash[:notice] = "Wall removed"
    redirect_to user_path(current_user)
  end

  private

  def wall_params
    params.require(:wall).permit(:wall_name, :length, :height)
  end
end
