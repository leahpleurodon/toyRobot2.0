module Bot
  module Commands

    class PlaceCommand

      def initialize(x, y, facing)
        @x = x
        @y = y
        @facing = facing
      end

      def perform
        Bot::Position.new(x, y, facing)
      end

      private
      attr_reader :x, :y, :facing
    end
  end
end
