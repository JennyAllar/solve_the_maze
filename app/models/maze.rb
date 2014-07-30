class Maze < ActiveRecord::Base
  
  def has_entrance?(string)
    string.include?("E")
  end

  def has_exit?(string)
    string.include?("X")
  end

  def has_doorway?(string)
    string.include?("*")
  end

  def count_doorways(string)
    counter = 0
    characters = string.chars
    characters.each do |character|
      if character == "*"
        counter += 1
      end
    end
    counter
  end
  
  def room_valid?(room)
    room.length == 6
  end
    
end