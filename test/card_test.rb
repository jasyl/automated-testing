require_relative 'test_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      # Test to ensure that to_s works for cards values 2-10
      # for example:  "2 of diamonds"
      expect(Card.new(5, :diamonds).to_s).must_equal "5 of diamonds"
      expect(Card.new(10, :spades).to_s).must_equal "10 of spades"
      expect(Card.new(2, :clubs).to_s).must_equal "2 of clubs"
      expect(Card.new(7, :hearts).to_s).must_equal "7 of hearts"
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      # Test to ensure that to_s works for cards values 1, and 11-13
      # For example: "Queen of hearts"
      # The current implementation of to_s does not address this feature
      # Write the test, see it fail, then modify to_s to make it pass!
      # (Consider writing a helper method!)
      #
      expect(Card.new(13, :diamonds).to_s).must_equal "King of diamonds"
      expect(Card.new(12, :spades).to_s).must_equal "Queen of spades"
      expect(Card.new(1, :hearts).to_s).must_equal "Ace of hearts"
      expect(Card.new(11, :clubs).to_s).must_equal "Jack of clubs"

    end
  end

  describe "Reader methods" do

    it "Can retrieve the value of the card using a `.value`." do
      # ensure that `.value works as expected`
      expect(Card.new(13, :diamonds).value).must_equal 13
    end

    it "Can retrieve the value of the card using a `.suit`." do
      # ensure that `.suit works as expected returning the symbol of the suit`
      expect(Card.new(13, :diamonds).suit).must_equal :diamonds

    end
  end

end
