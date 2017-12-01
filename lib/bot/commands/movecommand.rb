module Bot
  module Commands
    class MoveCommand

      def initialize(initial_position)
        @initial_position = initial_position
      end

      def perform
       Bot::Position.new(
         moved_position_x,
         moved_position_y,
         initial_position.facing
       )
      end

      private
      attr_reader :initial_position
      MOVES = {
        NORTH: { x: 0, y: 1 },
        EAST: { x: 1, y: 0 },
        SOUTH: { x: 0, y: -1 },
        WEST: { x: -1, y: 0 }
      }
      def moved_position_x
        initial_position.x + MOVES[initial_position.facing][:x]
      end

      def moved_position_y
        initial_position.y + MOVES[initial_position.facing][:y]
      end

    end
  end
end
