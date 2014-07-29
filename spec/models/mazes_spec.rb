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

  end