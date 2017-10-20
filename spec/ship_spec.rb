require 'Ship'

describe 'Ship' do
  let( :ship ){ Ship.new }
  it 'initializes with an instance of Ship' do
    expect(ship).to be_instance_of(Ship)
  end
end
