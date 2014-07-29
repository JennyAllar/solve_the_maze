class MazesController < ApplicationController
  def index
    @maze = Maze.new
    @mazes = Maze.all
  end

  def create
    @maze = Maze.create(maze_params)
    redirect_to Maze
  end

  private
  def maze_params
    params.require(:maze).permit(:maze)
  end
end