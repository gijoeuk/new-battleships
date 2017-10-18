require 'Battleships'

describe 'Battleships' do
  it 'initializes with an instance of Battleships' do
    battleships = Battleships.new
    expect(battleships).to be_instance_of(Battleships)
  end
end
