require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
  STANDARD_VALS = (1..13).to_a
  STANDARD_SUITS = [:hearts, :clubs, :diamonds, :spades]
  let (:standard_deck) {
    Deck.new(STANDARD_VALS, STANDARD_SUITS)
  }

  it "Deck has 52 cards at instantiation" do
    standard_deck = Deck.new(STANDARD_VALS, STANDARD_SUITS)
    expect(standard_deck.cards.length).must_equal 52
  end

  it "Deck is a deck object" do
    expect(standard_deck).must_be_instance_of Deck
  end

  it "#draw returns a card object" do
    expect(standard_deck.draw).must_be_instance_of Card
  end

  it "there is one less card in the deck after drawing" do
    removed_card = standard_deck.draw
    expect(standard_deck.cards.include?(removed_card)).must_equal false
  end

  it "deck is shuffled" do
      before_shuffle = standard_deck.cards.first
      standard_deck.shuffle
      after_shuffle = standard_deck.cards.first
      expect(before_shuffle != after_shuffle).must_equal true
  end

  it "#count return apprpriate number of cards" do
    10.times {standard_deck.draw}
    expect(standard_deck.count).must_equal 42
  end

end
