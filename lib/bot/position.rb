module Bot

  class Position

    def initialize(x, y, f)
      @x = x
      @y = y
      @f = f.upcase.to_sym
    end

    attr_accessor :x, :y, :f

  end

end
