require 'bot/position'

describe 'position' do

  let(:botpos) { Bot::Position.new(1, 0, 'West') }

  it 'Creates the bots position as x1 y0 fWest' do
    expect(botpos.x).to eql(1)
    expect(botpos.y).to eql(0)
    expect(botpos.f).to eql(:WEST)
  end

end
