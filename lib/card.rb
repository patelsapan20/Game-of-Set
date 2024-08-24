
# Card class.
class Card
  # readers for the card properties
  attr_reader :number, :shape, :color, :shade

  # Initialize a new Card with specified properties
  def initialize(number, shape, color, shade)
    @number = number
    @shape = shape
    @color = color
    @shade = shade
  end

  # Convert the card to a string representation
  def to_s
    "#{number} #{shape} #{color} #{shade}"
  end
end