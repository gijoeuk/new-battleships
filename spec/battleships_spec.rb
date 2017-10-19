require 'Battleships'

describe 'Battleships' do
  it 'initializes with an instance of Battleships' do
      battleships = Battleships.new
      expect(battleships).to be_instance_of(Battleships)
    end

  it "initializes with an array of 10x10 dots" do
    battleships = Battleships.new
    expect(battleships.grid).to eq('..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........')
  end
end
