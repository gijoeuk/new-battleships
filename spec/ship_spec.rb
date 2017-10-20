require 'Ship'

describe 'Ship' do
  let( :ship ){ Ship.new(1) }
  it 'initializes with an instance of Ship' do
    expect(ship).to be_instance_of(Ship)
  end

  it 'initializes with three consecutive indices when placed horizontally' do
    expect(ship.coordinates).to eq([1,2,3])
  end

  it 'initializes with as floating' do
    expect(ship.float_status).to eq('floating')
  end
end
