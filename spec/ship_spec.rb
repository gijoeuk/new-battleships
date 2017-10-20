require 'Ship'

describe 'Ship' do
  let( :ship1 ){ Ship.new(0, 'H') }
  let( :ship2 ){ Ship.new(0, 'V') }
  it 'initializes with an instance of Ship' do
    expect(ship1).to be_instance_of(Ship)
  end

  it 'initializes with three consecutive indices when placed horizontally' do
    expect(ship1.coordinates).to eq([0,1,2])
  end

  it 'initializes with three indices when placed vertically' do
    expect(ship2.coordinates).to eq([0,11,22])
  end

  it 'initializes with as floating' do
    expect(ship1.float_status).to eq('floating')
  end
end
