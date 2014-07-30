require 'rails_helper'

describe Maze do
  it 'can determine if there is an entrance in the room' do
    input = "[E**|] [|***] [|*|*] [|***] [||**]"
    actual = Maze.new.has_entrance?(input)

    expect(actual).to eq true
  end

  it 'can determine if there is an exit in the room' do
    input = "[*||E] [|**|] [*|**] [*|||] [|X*|]"
    actual = Maze.new.has_exit?(input)

    expect(actual).to eq true
  end

  it 'can determine if there is a doorway in the room' do
    input = "[*||E] [|**|] [*|**] [*|||] [|X*|]"
    actual = Maze.new.has_doorway?(input)

    expect(actual).to eq true
  end

  it 'can determine how many doorways are in a room' do
    input = "[|**|]"
    actual = Maze.new.count_doorways(input)

    expect(actual).to eq(2)
  end
  
  it 'determines if a room is valid' do
    valid_room = "[|**|]"
    invalid_room = "[|||||]"
    actual_1 = Maze.create.room_valid?(valid_room)
    actual_2 = Maze.new.room_valid?(invalid_room)
    
    expect(actual_1).to eq true
    expect(actual_2).to eq false
  end
  
  
end