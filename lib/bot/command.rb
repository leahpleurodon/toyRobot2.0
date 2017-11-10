module Bot

  class Command

    @moves = {
      NORTH: { x: 0, y: 1, right: :EAST, left: :WEST },
      EAST: { x: 1, y: 0, right: :SOUTH, left: :NORTH },
      SOUTH: { x: 0, y: -1, right: :WEST, left: :EAST },
      WEST: { x: -1, y: 0, right: :NORTH, left: :SOUTH }
    }

    def self.place(x, y, f)
      Bot::Position.new(x, y, f)
    end

    def self.move(position)
      position.x += @moves[position.f][:x]
      position.y += @moves[position.f][:y]
    end

    def self.right(position)
      position.f = @moves[position.f][:right]
    end

    def self.left(position)
      position.f = @moves[position.f][:left]
    end
  end

end
