# Necessary files for the SetGame
require_relative 'deck'
require_relative 'board'
require_relative 'player'

# SetGame class
class SetGame
  # Initializing the SetGame with a deck, board, and players
  def initialize
    @deck = Deck.new
    @board = Board.new(@deck)
    @players = setup_players
  end

  # Play the SetGame
  def play
    loop do
      # Display the current state of the board
      @board.display
      # Each player attempts to find a set on the board
      @players.each do |player|
        player.find_set(@board)
      end
      # Break the loop if the game is over
      break if game_over?
      # Replace a set of cards on the board
      @board.replace_set([0, 1, 2]) 
    end
    # Declare the winner at the end of the game
    declare_winner
  end

  private

  # Set up the players based on user input
  def setup_players
    puts 'Enter the number of players:'
    num_players = gets.chomp.to_i

    players = (1..num_players).map do |index|
      puts "Enter name for Player #{index}:"
      name = gets.chomp
      Player.new(name)
    end

    players
  end

  # Check if the game is over
  def game_over?
    # Game over if the deck is empty or no valid sets on the board
    @deck.cards.empty? || !valid_set_exists?
  end

  # Check if a valid set exists on the board
  def valid_set_exists?
    sets = @board.cards.combination(3).to_a
    sets.any? { |set| valid_set?(set) }
  end

  # Check if a set of cards forms a valid set
  def valid_set?(cards)
    same_or_different?(cards.map(&:number)) &&
      same_or_different?(cards.map(&:shape)) &&
      same_or_different?(cards.map(&:color)) &&
      same_or_different?(cards.map(&:shade))
  end

  # Helper method to check if attributes are either all the same or all different
  def same_or_different?(attributes)
    attributes.uniq.length == 1 || attributes.uniq.length == 3
  end

  # Declare the winner at the end of the game
  def declare_winner
    max_score = @players.map(&:score).max
    winners = @players.select { |player| player.score == max_score }

    puts "Game over!"
    if winners.length == 1
      puts "Player #{winners.first} wins with a score of #{max_score}."
    else
      puts "It's a tie!"
    end
  end
end



