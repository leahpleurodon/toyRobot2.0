module Bot

  class Position

    def initialize(x, y, facing)
      @x = x
      @y = y
      @facing = facing.upcase.to_sym
    end

    attr_accessor :x, :y, :facing

  end

end
