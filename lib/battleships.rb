class Battleships
  def create_grid
    @board = "..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n.........."
  end

  def place_ship_horizontal(index)
      if index % 10 > 7
        "Cannot place ship ouf of bounds. Try again"
      else
        @board[index..(index+2)]= "OOO"
        @board
      end
    end
end

# evens = (1..10).each_with_object([]) { |i, a| a << i*2 }
# #=> [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
#
# def place_ship(index)
#   @board[index] = "X"
# end

# def place_ship(index)
#   @board[index..(index+1)]= "X"
# end
#
# def place_ship(index)
#   @board[0,1]= "X"
# end
