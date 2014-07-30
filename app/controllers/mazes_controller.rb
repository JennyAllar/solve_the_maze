class MazesController < ApplicationController
  def index
    @maze = Maze.new
    @mazes = Maze.all
    @input = params[:maze]
  end

  def create
    input = params[:maze]
    rooms =input[:maze].split
    rooms.each do |room|
      if room_valid?(room)
        flash[:notice] = "Your rooms are valid."
        redirect_to Maze
      else
        flash[:notice] = "I'm sorry, these are not valid rooms."
      end
    end
  end

  private
  def maze_params
    params.require(:maze).permit(:maze)
  end

  def room_valid?(room)
    room.length == 6
  end
end