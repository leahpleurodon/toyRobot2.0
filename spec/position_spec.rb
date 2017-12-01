require 'bot/position'

describe Bot::Position do
  subject(:botpos){Bot::Position.new(1, 0, 'West')}
  context 'its given an x,y and facing of 1,0,WEST' do
    it 'creates bot with x = 1' do
      expect(botpos.x).to eql(1)
    end
    it 'creates bot with y = 0' do
      expect(botpos.y).to eql(0)
    end
    it 'creates bot with facing = :WEST' do
      expect(botpos.facing).to eql(:WEST)
    end
  end
end
