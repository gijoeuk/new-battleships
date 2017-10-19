class Battleships
  def create_grid
    @board = "..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n.........."
  end

  def place_ship(index)
    @board[index]= "X"
    @board
  end
end


#
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
