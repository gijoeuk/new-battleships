class Ship
  attr_reader :coordinates, :float_status

  def initialize(index)
    @coordinates = [index, index +1, index +2]
    @float_status = 'floating'
  end
end
