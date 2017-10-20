require_relative 'Ship'

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
        @ship = Ship.new(index, 'H')
        @ship.coordinates.each{|i| @board[i] = "O" }
      end
    end

  def place_ship_vertical(index)
    if index > 87
      "Cannot place ship ouf of bounds. Try again"
    else
      @ship = Ship.new(index, 'V')
      p @ship
      @ship.coordinates.each{|i| @board[i] = "O" }
    end
  end

  def attack(index)
    if @ship.coordinates.include?(index)
      @board[index] = "*"
      "HIT!!"
    else
      @board[index] = "X"
      "MISSED!!"
    end
  end
end
