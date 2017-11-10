require 'bot/command'

describe 'place' do

  let(:botpos) { Bot::Command.place(1, 0, 'WEST') }

  it 'calls position creation at x1 y0 fWEST' do
    expect(botpos.x).to eql(1)
    expect(botpos.y).to eql(0)
    expect(botpos.f).to eql(:WEST)
  end

end

describe 'move' do

  let(:botposX) { Bot::Command.place(1, 0, 'WEST') }
  let(:botposY) { Bot::Command.place(1, 0, 'NORTH') }

  it 'moves bot to x0 y0 fWEST' do
    Bot::Command.move(botposX)
    expect(botposX.x).to eql(0)
    expect(botposX.y).to eql(0)
    expect(botposX.f).to eql(:WEST)
  end

  it 'moves bot to x0 y0 fWEST' do
    Bot::Command.move(botposY)
    expect(botposY.x).to eql(1)
    expect(botposY.y).to eql(1)
    expect(botposY.f).to eql(:NORTH)
  end


end

describe 'rotations' do #left and right

  let(:botpos) { Bot::Command.place(1, 0, 'WEST') }

  it 'Rotates the position.f to NORTH from WEST' do
    Bot::Command.right(botpos)
    expect(botpos.x).to eql(1)
    expect(botpos.y).to eql(0)
    expect(botpos.f).to eql(:NORTH)
  end

  it 'Rotates the position.f to SOUTH from WEST' do
    Bot::Command.left(botpos)
    expect(botpos.x).to eql(1)
    expect(botpos.y).to eql(0)
    expect(botpos.f).to eql(:SOUTH)
  end


end
