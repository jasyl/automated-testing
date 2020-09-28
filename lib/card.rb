
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    raise ArgumentError, "#{suit} is not a valid Suit" unless [:hearts, :spades, :clubs, :diamonds].include?(suit)
    raise ArgumentError, "#{value} is not a valid value" if value < 1 || value > 13

    @value = value
    @suit = suit
    

  end

  def to_s
    return "#{convert_facecard || value} of #{suit.to_s}"
  end

  # helper method for to_s
  def convert_facecard
    case value
    when 13
      return "King"
    when 12
      return "Queen"
    when 11
      return "Jack"
    when 1
      return "Ace"
    end
  end

end
