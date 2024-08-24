# 'card' file to include the Card class
require_relative 'card'

# Deck class
class Deck
  # reader for the cards in the deck
  attr_reader :cards

  # Initialize a new deck by generating a deck of cards and shuffling it
  def initialize
    @cards = generate_deck.shuffle
  end

  # Draw a specified number of cards from the deck
  def draw(num)
    @cards.shift(num)
  end

  private

  # Generate a standard deck of cards with different properties
  def generate_deck
    cards = []
    [1, 2, 3].each do |number|
      ['diamond', 'oval', 'squiggle'].each do |shape|
        ['red', 'green', 'purple'].each do |color|
          ['solid', 'striped', 'open'].each do |shade|
            # Create a new Card and add it to the deck
            cards << Card.new(number, shape, color, shade)
          end
        end
      end
    end
    cards
  end
end
