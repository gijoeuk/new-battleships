require 'Battleships'

describe 'Battleships' do
  it 'initializes with an instance of Battleships' do
      battleships = Battleships.new
      expect(battleships).to be_instance_of(Battleships)
    end

  it "has grid method to create grid of 10x10 dots" do
    battleships = Battleships.new
    expect(battleships.create_grid).to eq("..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........")
  end

  # it 'has a method to allow you to place a single cell ship' do
  #   battleships = Battleships.new
  #   battleships.create_grid
  #   expect(battleships.place_ship(0)).to eq("X.........\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........")
  # end

  it 'has a method to allow you to place a 3 cell ship' do
    battleships = Battleships.new
    battleships.create_grid
    expect(battleships.place_ship_horizontal(0)).to eq("XXX.......\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........")
  end
end
