class Ship
  attr_reader :coordinates, :float_status

  def initialize(index, orientation)
    self.plot_coordinates(index, orientation)
    @float_status = 'floating'
  end

  def plot_coordinates(index, orientation)
    if orientation == 'H'
      @coordinates = [index, index+1, index+2]
    elsif orientation == 'V' 
      @coordinates = [index, index+11, index+22]
    end
  end
end
