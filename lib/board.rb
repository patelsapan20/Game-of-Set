
require_relative 'deck'

# Board class
class Board
  # Initialize the Board with a deck
  def initialize(deck)
    @deck = deck
    # Draw 12 cards from the deck 
    @cards = @deck.draw(12)
  end

  # Display the current state of the board
  def display
    @cards.each_with_index do |card, index|
      # Display each card with its index on the board
      puts "#{index + 1}) #{card}"
    end
  end

  # Replace the cards in the given set indices with new cards from the deck
  def replace_set(set_indices)
    set_indices.each do |index|
      # Draw a new card from the deck to replace the card at the specified index
      @cards[index] = @deck.draw(1).first
    end
  end
  
  def get_cards
    @cards
  end
end



