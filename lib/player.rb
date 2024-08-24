# Player class
class Player
  # Attribute accessor for the player's score
  attr_accessor :score
  attr_reader:name

  # Initialize a new player with an initial score of 0
  def initialize
    @score = 0
  end

  def initialize(name)
    @name = name
    @score = 0
  end

  # Method for the player to find a set on the board
  def find_set(board)
    # Prompt the player to enter the indices of three cards
    puts "Player, enter the indices of three cards separated by spaces (e.g., 1 2 3):"
    input = gets.chomp.split.map(&:to_i)

    # Check if the entered indices represent a valid set
    if valid_set?(board, input)
      puts "Set found! Player scores a point."
      @score += 1
      # Replace the cards in the valid set on the board
      board.replace_set(input)
    else
      puts "Not a valid set. Try again."
      # Recursive call to find_set if the entered set is not valid
      find_set(board)
    end
  end

  private

  # Check if the selected cards form a valid set based on Set game rules
  def valid_set?(board, indices)
    return false unless indices.length == 3

    # Retrieve the selected cards from the board
    cards = indices.map { |index| board.get_cards[index] }

    # Check if each attribute (number, shape, color, shade) is either all the same or all different
    same_or_different?(cards.map(&:number)) &&
      same_or_different?(cards.map(&:shape)) &&
      same_or_different?(cards.map(&:color)) &&
      same_or_different?(cards.map(&:shade))
  end

  # Helper method to check if attributes are either all the same or all different
  def same_or_different?(attributes)
    attributes.uniq.length == 1 || attributes.uniq.length == 3
  end
end
