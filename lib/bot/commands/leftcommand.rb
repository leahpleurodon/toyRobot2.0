module Bot
  module Commands

    class LeftCommand

      def initialize(initial_position)
        @initial_position = initial_position
      end

      def perform()
        Bot::Position.new(
          initial_position.x,
          initial_position.y,
          rotated_position
        )
      end

      private
      attr_reader :initial_position
      MOVES = {
        NORTH: :WEST ,
        EAST: :NORTH ,
        SOUTH: :EAST ,
        WEST: :SOUTH
      }
      def rotated_position
        MOVES[initial_position.facing]
      end

    end

  end
end
