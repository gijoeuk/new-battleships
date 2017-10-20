class Battleships
  attr_reader :board

  def initialize
    @board = "..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n.........."
  end

  def view_board
    return @board
  end

  def place_ship_horizontal(index)
      if index % 10 > 8
        "Cannot place ship ouf of bounds. Try again"
      else
        @board[index..(index+2)]= "OOO"
        @board
      end
    end

  def place_ship_vertical(index)
    if index > 76
      "Cannot place ship ouf of bounds. Try again"
    else
      3.times do
        @board[index] = "O"
        index += 11
    end
      @board
    end
  end

  def attack(index)
    if @board[index] == "O"
      @board[index] = "X"
      "HIT!!"
    else
      @board[index] = "X"
      "MISSED!!"
    end
  end
end
