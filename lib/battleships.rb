require 'Ship'

class Battleships
  attr_reader :board

  def initialize
    @board = "..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n"
  end

  def view_board
    @board
  end

  def place_ship_horizontal(index)
    outofbounds = [8,9,20,21,30,31,41,42,52,53,63,64,74,75,85,86,96,97,107,108]
      if outofbounds.include?(index)
        "Cannot place ship ouf of bounds. Try again"
      else
        @ship = Ship.new(index)
        @ship.coordinates.each{|i| @board[i] = "O" }
      end
    end

  def place_ship_vertical(index)
    if index > 87
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
      # @ship.sunk == true ? "Ship sunk" :
      "HIT!!"
    else
      @board[index] = "X"
      "MISSED!!"
    end
  end
end
