class Maze < ActiveRecord::Base
  def has_entrance?(string)
    string.include?("E")
  end
end