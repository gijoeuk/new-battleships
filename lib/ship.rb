class Ship
  attr_reader :coordinates

  def initialize(index)
    @coordinates = [index, index +1, index +2]
  end
end
