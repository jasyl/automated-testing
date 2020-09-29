
# deck.rb

require_relative 'card'

class Deck

  attr_reader :cards

  def initialize(values, suits)
    @cards = []
    values.each do |value|
      suits .each do |suit|
        @cards << Card.new(value, suit)
      end
    end
  end

  def draw
    raise ArgumentError, "no more cards to draw" if count < 1
    return @cards.pop # returns a card
  end

  def shuffle
    return @cards.shuffle!
  end

  def count
    return @cards.length
  end
end
