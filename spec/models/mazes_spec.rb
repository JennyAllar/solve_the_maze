require 'rails_helper'

describe Maze do
  it 'can determine if there is an entrance in the room' do
    input = "[E**|] [|***] [|*|*] [|***] [||**]"
    
    actual = Maze.new.has_entrance?(input)
    
    expect(actual).to eq true
 
  end
end