require 'bot/commands/leftcommand'
require 'bot/commands/rightcommand'
require 'bot/commands/movecommand'
require 'bot/commands/placecommand'


describe Bot::Commands::LeftCommand do
  subject(:left_command){ Bot::Commands::LeftCommand.new(botpos) }
  describe '#perform' do
    subject(:rotated_position) {left_command.perform}
    context 'receives position with WEST face' do
      let(:botpos) { Bot::Position.new(1, 0, 'WEST') }
      it 'returns a position with SOUTH face' do
        expect(rotated_position.facing).to eql(:SOUTH)
      end
      it 'does not change the x position' do
        expect(rotated_position.x).to eql(1)
      end
      it 'does not change the y position' do
        expect(rotated_position.y).to eql(0)
      end
    end
  end
end

describe Bot::Commands::RightCommand do
  subject(:right_command){ Bot::Commands::RightCommand.new(botpos) }
  describe '#perform' do
    subject(:rotated_position){ right_command.perform }
    context 'receives position with WEST face' do
      let(:botpos) { Bot::Position.new(1, 0, 'WEST') }
      it 'returns a position with NORTH face' do
        expect(rotated_position.facing).to eql(:NORTH)
      end
      it 'does not change the x position' do
        expect(rotated_position.x).to eql(1)
      end
      it 'does not change the y position' do
        expect(rotated_position.y).to eql(0)
      end
    end
  end
end

describe Bot::Commands::MoveCommand do
  subject(:move_command){ Bot::Commands::MoveCommand.new(botpos) }
  describe '#perform' do
    subject(:moved_position){ move_command.perform }
    context 'receives position at x 1 y 0 facing NORTH' do
      let(:botpos) { Bot::Position.new(1,0,'NORTH') }
      it 'changes y position to 1' do
        expect(moved_position.y).to eql(1)
      end
      it 'does not change the x position' do
        expect(moved_position.x).to eql(1)
      end
    end
  end
end

describe Bot::Commands::PlaceCommand do
  subject(:place_command){ Bot::Commands::PlaceCommand.new(0,1,'North') }
  describe '#perform' do
    subject(:placed_bot) { place_command.perform }
    context 'it receives arguments( x= 0, y = 1, facing = "North")' do
      it 'creates a position with x = 0' do
        expect(placed_bot.x).to eql(0)
      end
      it 'creates a position with y = 1' do
        expect(placed_bot.y).to eql(1)
      end
      it 'creates a position with facing = :NORTH' do
        expect(placed_bot.facing).to eql(:NORTH)
      end
    end
  end
end
