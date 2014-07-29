class Maze < ActiveRecord::Base
  def has_entrance?(string)
    string.include?("E")
  end

  def has_exit?(string)
    string.include?("X")
  end
end