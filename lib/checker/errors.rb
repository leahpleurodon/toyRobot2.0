module Checker

  class EdgeError < StandardError
    def to_s
      'For the pretection of your bot your move command was not processed.'
    end
  end

  class PlaceOffTable < StandardError
    def to_s
      'You Cannot place a bot off the table.'
    end
  end

  class NoPlaceError < StandardError
    def to_s
      'You cant move a bot you havent placed. Place the bot first. Please read the README and try again'
    end
  end

  class NoSuchCommand < StandardError
    def to_s
      'The command you entered doesnt exist or was entered incorrectly. Please read the README and try again'
    end
  end

  class InvalidArgs < StandardError
    def to_s
      'One of the arguments in your command is not correct. Please read the README and try again'
    end
  end

end
