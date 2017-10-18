require 'Battleships'

describe 'Battleships' do
  it 'initializes with an instance of Battleships' do
      battleships = Battleships.new
      expect(battleships).to be_instance_of(Battleships)
    end

  it "initializes with an array of 4x4 0's" do
    battleships = Battleships.new
    expect(battleships.grid).to eq([0,0,0,0,0,0,0,0,0,0])
  end
end
