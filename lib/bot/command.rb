module Bot

  class Command

    @moves = {
      NORTH: [0, 1, :EAST, :WEST],
      EAST: [1, 0, :SOUTH, :NORTH],
      SOUTH: [0, -1, :WEST, :EAST],
      WEST: [-1, 0, :NORTH, :SOUTH] }

    def self.place(x, y, f)
      Bot::Position.new(x, y, f)
    end

    def self.move(position)
      position.x += @moves[position.f][0]
      position.y += @moves[position.f][1]
    end

    def self.right(position)
      position.f = @moves[position.f][2]
    end

    def self.left(position)
      position.f = @moves[position.f][3]
    end
  end

end
